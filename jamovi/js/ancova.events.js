
const events = {
    update: function(ui) {
        ui.ciWidth.setEnabled(ui.errBarDef_ci.value());

        calcModelTerms(ui, this);
        filterModelTerms(ui, this);
    },

    onChange_errBarDef_ci: function(ui) {
        ui.ciWidth.setEnabled(ui.errBarDef_ci.value());
    },

    onChange_fixedFactors: function(ui) {
        calcModelTerms(ui, this);
    },

    onChange_covariates: function(ui) {
        calcModelTerms(ui, this);
    },

    onChange_modelTerms: function(ui) {
        filterModelTerms(ui, this);
        updatePostHocSupplier(ui, this);
    },

    onChange_plotsSupplier: function(ui) {
        let values = this.itemsToValues(ui.plotsSupplier.value());
        this.checkValue(ui.descPlotsHAxis, false, values, FormatDef.variable);
        this.checkValue(ui.descPlotsSepLines, false, values, FormatDef.variable);
        this.checkValue(ui.descPlotsSepPlots, false, values, FormatDef.variable);
    },

    onChange_postHocSupplier: function(ui) {
        let values = this.itemsToValues(ui.postHocSupplier.value());
        this.checkValue(ui.postHoc, true, values, FormatDef.term);
    },

    onEvent_modelTerms_preprocess: function(ui, data) {
        if (data.intoSelf === false)
            data.items = this.getItemCombinations(data.items);
    }
};

var calcModelTerms = function(ui, context) {
    var variableList = context.cloneArray(ui.fixedFactors.value(), []);
    var covariatesList = context.cloneArray(ui.covariates.value(), []);

    var combinedList = variableList.concat(covariatesList);

    ui.modelSupplier.setValue(context.valuesToItems(combinedList, FormatDef.variable));
    ui.plotsSupplier.setValue(context.valuesToItems(variableList, FormatDef.variable));

    var diff = context.findChanges("variableList", variableList, true, FormatDef.variable);
    var diff2 = context.findChanges("covariatesList", covariatesList, true, FormatDef.variable);
    var combinedDiff = context.findChanges("combinedList", combinedList, true, FormatDef.variable);


    var termsList = context.cloneArray(ui.modelTerms.value(), []);
    var termsChanged = false;

    for (var i = 0; i < combinedDiff.removed.length; i++) {
        for (var j = 0; j < termsList.length; j++) {
            if (FormatDef.term.contains(termsList[j], combinedDiff.removed[i])) {
                termsList.splice(j, 1);
                termsChanged = true;
                j -= 1;
            }
        }
    }

    for (var i = 0; i < diff.added.length; i++) {
        var listLength = termsList.length;
        for (var j = 0; j < listLength; j++) {
            var newTerm = context.clone(termsList[j]);
            if (containsCovariate(newTerm, covariatesList) === false) {
                newTerm.push(diff.added[i])
                termsList.push(newTerm);
            }
        }
        termsList.push([diff.added[i]]);
        termsChanged = true;
    }

    for (var i = 0; i < diff2.added.length; i++) {
        termsList.push([diff2.added[i]]);
        termsChanged = true;
    }

    if (termsChanged)
        ui.modelTerms.setValue(termsList);

    updateContrasts(ui, variableList, context);
};

var updatePostHocSupplier = function(ui, context) {
    var termsList = context.cloneArray(ui.modelTerms.value(), []);
    var covariatesList = context.cloneArray(ui.covariates.value(), []);
    var list = [];
    for (var j = 0; j < termsList.length; j++) {
        var term = termsList[j];
        if (containsCovariate(term, covariatesList) === false)
            list.push(term)
    }
    ui.postHocSupplier.setValue(context.valuesToItems(list, FormatDef.term));
};

var filterModelTerms = function(ui, context) {
    var termsList = context.cloneArray(ui.modelTerms.value(), []);
    var diff = context.findChanges("termsList", termsList, true, FormatDef.term);

    var changed = false;
    if (diff.removed.length > 0) {
        var itemsRemoved = false;
        for (var i = 0; i < diff.removed.length; i++) {
            var item = diff.removed[i];
            for (var j = 0; j < termsList.length; j++) {
                if (FormatDef.term.contains(termsList[j], item)) {
                    termsList.splice(j, 1);
                    j -= 1;
                    itemsRemoved = true;
                }
            }
        }

        if (itemsRemoved)
            changed = true;
    }

    if (context.sortArraysByLength(termsList))
        changed = true;

    if (changed)
        ui.modelTerms.setValue(termsList);
};

var updateContrasts = function(ui, variableList, context) {
    var currentList = context.cloneArray(ui.contrasts.value(), []);

    var list3 = [];
    for (let i = 0; i < variableList.length; i++) {
        let found = null;
        for (let j = 0; j < currentList.length; j++) {
            if (currentList[j].var === variableList[i]) {
                found = currentList[j];
                break;
            }
        }
        if (found === null)
            list3.push({ var: variableList[i], type: "none" });
        else
            list3.push(found);
    }

    ui.contrasts.setValue(list3);
};

var containsCovariate = function(value, covariates) {
    for (var i = 0; i < covariates.length; i++) {
        if (FormatDef.term.contains(value, covariates[i]))
            return true;
    }

    return false;
};


module.exports = events;
