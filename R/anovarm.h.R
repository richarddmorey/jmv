
# This file is automatically generated, you probably don't want to edit this

#' @rdname jamovi
#' @importFrom jmvcore Options
#' @importFrom R6 R6Class
#' @export
anovaRMOptions <- R6::R6Class(
    "anovaRMOptions",
    inherit = jmvcore::Options,
    public = list(
        initialize = function(
            rm = list(
                list(label="RM Factor 1", levels=list(
                    "Level 1",
                    "Level 2"))),
            rmCells = NULL,
            bs = NULL,
            cov = NULL,
            rmTerms = NULL,
            bsTerms = NULL,
            ss = "3",
            spherTests = FALSE,
            spherCorrs = FALSE,
            spherCorrNone = TRUE,
            spherCorrGreenGsser = TRUE,
            spherCorrHuyFdt = TRUE,
            homoTests = FALSE,
            contrasts = NULL,
            postHoc = NULL,
            corrTukey = TRUE,
            corrScheffe = FALSE,
            corrBonf = FALSE,
            corrHolm = FALSE,
            descPlotsHAxis = NULL,
            descPlotsSepLines = NULL,
            descPlotsSepPlots = NULL,
            dispErrBars = FALSE,
            errBarDef = "ci",
            ciWidth = 95,
            dispDescStats = FALSE,
            effSizeN2 = FALSE,
            partEffSizeN2 = FALSE,
            effSizeW2 = FALSE, ...) {

            super$initialize(
                package='jmv',
                name='anovaRM',
                requiresData=TRUE,
                ...)
        
            private$..rm <- jmvcore::OptionArray$new(
                "rm",
                rm,
                default=list(
                    list(label="RM Factor 1", levels=list(
                        "Level 1",
                        "Level 2"))),
                template=jmvcore::OptionGroup$new(
                    "rm",
                    NULL,
                    elements=list(
                        jmvcore::OptionString$new(
                            "label",
                            NULL),
                        jmvcore::OptionArray$new(
                            "levels",
                            NULL,
                            template=jmvcore::OptionString$new(
                                "levels",
                                NULL)))))
            private$..rmCells <- jmvcore::OptionArray$new(
                "rmCells",
                rmCells,
                default=NULL,
                template=jmvcore::OptionGroup$new(
                    "rmCells",
                    NULL,
                    elements=list(
                        jmvcore::OptionVariable$new(
                            "measure",
                            NULL),
                        jmvcore::OptionArray$new(
                            "cell",
                            NULL,
                            template=jmvcore::OptionString$new(
                                "cell",
                                NULL)))))
            private$..bs <- jmvcore::OptionVariables$new(
                "bs",
                bs,
                suggested=list(
                    "nominal",
                    "ordinal"),
                default=NULL)
            private$..cov <- jmvcore::OptionVariables$new(
                "cov",
                cov,
                suggested=list(
                    "continuous"),
                permitted=list(
                    "continuous",
                    "nominal",
                    "ordinal"),
                default=NULL)
            private$..rmTerms <- jmvcore::OptionTerms$new(
                "rmTerms",
                rmTerms,
                default=NULL)
            private$..bsTerms <- jmvcore::OptionTerms$new(
                "bsTerms",
                bsTerms,
                default=NULL)
            private$..ss <- jmvcore::OptionList$new(
                "ss",
                ss,
                options=list(
                    "1",
                    "2",
                    "3"),
                default="3")
            private$..spherTests <- jmvcore::OptionBool$new(
                "spherTests",
                spherTests,
                default=FALSE)
            private$..spherCorrs <- jmvcore::OptionBool$new(
                "spherCorrs",
                spherCorrs,
                default=FALSE)
            private$..spherCorrNone <- jmvcore::OptionBool$new(
                "spherCorrNone",
                spherCorrNone,
                default=TRUE)
            private$..spherCorrGreenGsser <- jmvcore::OptionBool$new(
                "spherCorrGreenGsser",
                spherCorrGreenGsser,
                default=TRUE)
            private$..spherCorrHuyFdt <- jmvcore::OptionBool$new(
                "spherCorrHuyFdt",
                spherCorrHuyFdt,
                default=TRUE)
            private$..homoTests <- jmvcore::OptionBool$new(
                "homoTests",
                homoTests,
                default=FALSE)
            private$..contrasts <- jmvcore::OptionArray$new(
                "contrasts",
                contrasts,
                items="(bs)",
                default=NULL,
                template=jmvcore::OptionGroup$new(
                    "contrasts",
                    NULL,
                    elements=list(
                        jmvcore::OptionString$new(
                            "var",
                            NULL,
                            content="$key"),
                        jmvcore::OptionList$new(
                            "type",
                            NULL,
                            options=list(
                                "none",
                                "deviation",
                                "simple",
                                "difference",
                                "helmert",
                                "repeated",
                                "polynomial")))))
            private$..postHoc <- jmvcore::OptionArray$new(
                "postHoc",
                postHoc,
                template=jmvcore::OptionArray$new(
                    "postHoc",
                    NULL,
                    template=jmvcore::OptionString$new(
                        "postHoc",
                        NULL)),
                default=NULL)
            private$..corrTukey <- jmvcore::OptionBool$new(
                "corrTukey",
                corrTukey,
                default=TRUE)
            private$..corrScheffe <- jmvcore::OptionBool$new(
                "corrScheffe",
                corrScheffe,
                default=FALSE)
            private$..corrBonf <- jmvcore::OptionBool$new(
                "corrBonf",
                corrBonf,
                default=FALSE)
            private$..corrHolm <- jmvcore::OptionBool$new(
                "corrHolm",
                corrHolm,
                default=FALSE)
            private$..descPlotsHAxis <- jmvcore::OptionVariable$new(
                "descPlotsHAxis",
                descPlotsHAxis,
                default=NULL)
            private$..descPlotsSepLines <- jmvcore::OptionVariable$new(
                "descPlotsSepLines",
                descPlotsSepLines,
                default=NULL)
            private$..descPlotsSepPlots <- jmvcore::OptionVariable$new(
                "descPlotsSepPlots",
                descPlotsSepPlots,
                default=NULL)
            private$..dispErrBars <- jmvcore::OptionBool$new(
                "dispErrBars",
                dispErrBars,
                default=FALSE)
            private$..errBarDef <- jmvcore::OptionList$new(
                "errBarDef",
                errBarDef,
                options=list(
                    "ci",
                    "se"),
                default="ci")
            private$..ciWidth <- jmvcore::OptionNumber$new(
                "ciWidth",
                ciWidth,
                min=50,
                max=99.9,
                default=95)
            private$..dispDescStats <- jmvcore::OptionBool$new(
                "dispDescStats",
                dispDescStats,
                default=FALSE)
            private$..effSizeN2 <- jmvcore::OptionBool$new(
                "effSizeN2",
                effSizeN2,
                default=FALSE)
            private$..partEffSizeN2 <- jmvcore::OptionBool$new(
                "partEffSizeN2",
                partEffSizeN2,
                default=FALSE)
            private$..effSizeW2 <- jmvcore::OptionBool$new(
                "effSizeW2",
                effSizeW2,
                default=FALSE)
        
            self$.addOption(private$..rm)
            self$.addOption(private$..rmCells)
            self$.addOption(private$..bs)
            self$.addOption(private$..cov)
            self$.addOption(private$..rmTerms)
            self$.addOption(private$..bsTerms)
            self$.addOption(private$..ss)
            self$.addOption(private$..spherTests)
            self$.addOption(private$..spherCorrs)
            self$.addOption(private$..spherCorrNone)
            self$.addOption(private$..spherCorrGreenGsser)
            self$.addOption(private$..spherCorrHuyFdt)
            self$.addOption(private$..homoTests)
            self$.addOption(private$..contrasts)
            self$.addOption(private$..postHoc)
            self$.addOption(private$..corrTukey)
            self$.addOption(private$..corrScheffe)
            self$.addOption(private$..corrBonf)
            self$.addOption(private$..corrHolm)
            self$.addOption(private$..descPlotsHAxis)
            self$.addOption(private$..descPlotsSepLines)
            self$.addOption(private$..descPlotsSepPlots)
            self$.addOption(private$..dispErrBars)
            self$.addOption(private$..errBarDef)
            self$.addOption(private$..ciWidth)
            self$.addOption(private$..dispDescStats)
            self$.addOption(private$..effSizeN2)
            self$.addOption(private$..partEffSizeN2)
            self$.addOption(private$..effSizeW2)
        }),
    active = list(
        rm = function() private$..rm$value,
        rmCells = function() private$..rmCells$value,
        bs = function() private$..bs$value,
        cov = function() private$..cov$value,
        rmTerms = function() private$..rmTerms$value,
        bsTerms = function() private$..bsTerms$value,
        ss = function() private$..ss$value,
        spherTests = function() private$..spherTests$value,
        spherCorrs = function() private$..spherCorrs$value,
        spherCorrNone = function() private$..spherCorrNone$value,
        spherCorrGreenGsser = function() private$..spherCorrGreenGsser$value,
        spherCorrHuyFdt = function() private$..spherCorrHuyFdt$value,
        homoTests = function() private$..homoTests$value,
        contrasts = function() private$..contrasts$value,
        postHoc = function() private$..postHoc$value,
        corrTukey = function() private$..corrTukey$value,
        corrScheffe = function() private$..corrScheffe$value,
        corrBonf = function() private$..corrBonf$value,
        corrHolm = function() private$..corrHolm$value,
        descPlotsHAxis = function() private$..descPlotsHAxis$value,
        descPlotsSepLines = function() private$..descPlotsSepLines$value,
        descPlotsSepPlots = function() private$..descPlotsSepPlots$value,
        dispErrBars = function() private$..dispErrBars$value,
        errBarDef = function() private$..errBarDef$value,
        ciWidth = function() private$..ciWidth$value,
        dispDescStats = function() private$..dispDescStats$value,
        effSizeN2 = function() private$..effSizeN2$value,
        partEffSizeN2 = function() private$..partEffSizeN2$value,
        effSizeW2 = function() private$..effSizeW2$value),
    private = list(
        ..rm = NA,
        ..rmCells = NA,
        ..bs = NA,
        ..cov = NA,
        ..rmTerms = NA,
        ..bsTerms = NA,
        ..ss = NA,
        ..spherTests = NA,
        ..spherCorrs = NA,
        ..spherCorrNone = NA,
        ..spherCorrGreenGsser = NA,
        ..spherCorrHuyFdt = NA,
        ..homoTests = NA,
        ..contrasts = NA,
        ..postHoc = NA,
        ..corrTukey = NA,
        ..corrScheffe = NA,
        ..corrBonf = NA,
        ..corrHolm = NA,
        ..descPlotsHAxis = NA,
        ..descPlotsSepLines = NA,
        ..descPlotsSepPlots = NA,
        ..dispErrBars = NA,
        ..errBarDef = NA,
        ..ciWidth = NA,
        ..dispDescStats = NA,
        ..effSizeN2 = NA,
        ..partEffSizeN2 = NA,
        ..effSizeW2 = NA)
)

#' @import jmvcore
#' @importFrom R6 R6Class
anovaRMResults <- R6::R6Class(
    inherit = jmvcore::Group,
    active = list(
        rmTable = function() private$..rmTable,
        bsTable = function() private$..bsTable,
        assump = function() private$..assump,
        contrasts = function() private$..contrasts,
        postHoc = function() private$..postHoc,
        descPlot = function() private$..descPlot,
        descPlots = function() private$..descPlots),
    private = list(
        ..rmTable = NA,
        ..bsTable = NA,
        ..assump = NA,
        ..contrasts = NA,
        ..postHoc = NA,
        ..descPlot = NA,
        ..descPlots = NA),
    public=list(
        initialize=function(options) {
            super$initialize(options=options, name="", title="Repeated Measures ANOVA")
            private$..rmTable <- jmvcore::Table$new(
                options=options,
                name="rmTable",
                title="Within Subjects Effects",
                clearWith=list(
                    "dependent",
                    "ss",
                    "rmCells",
                    "rmcModelTerms",
                    "bscModelTerms",
                    "bs",
                    "rm",
                    "cov",
                    "rmTerms",
                    "bsTerms"),
                columns=list(
                    list(`name`="name", `title`="", `content`=".", `type`="text"),
                    list(`name`="correction[none]", `title`="Sphericity Correction", `content`="None", `visible`="(spherCorrs && spherCorrNone)"),
                    list(`name`="ss[none]", `title`="Sum of Squares", `type`="number", `visible`="(!spherCorrs || (spherCorrs && spherCorrNone))"),
                    list(`name`="df[none]", `title`="df", `type`="integer", `visible`="(!spherCorrs || (spherCorrs && spherCorrNone))"),
                    list(`name`="ms[none]", `title`="Mean Square", `type`="number", `visible`="(!spherCorrs || (spherCorrs && spherCorrNone))"),
                    list(`name`="F[none]", `title`="F", `type`="number", `visible`="(!spherCorrs || (spherCorrs && spherCorrNone))"),
                    list(`name`="p[none]", `title`="p", `type`="number", `format`="zto,pvalue", `visible`="(!spherCorrs || (spherCorrs && spherCorrNone))"),
                    list(`name`="eta[none]", `title`="\u03B7\u00B2", `type`="number", `format`="zto", `visible`="(effSizeN2 && (!spherCorrs || (spherCorrs && spherCorrNone)))"),
                    list(`name`="partEta[none]", `title`="partial \u03B7\u00B2", `type`="number", `format`="zto", `visible`="(partEffSizeN2 && (!spherCorrs || (spherCorrs && spherCorrNone)))"),
                    list(`name`="omega[none]", `title`="\u03C9\u00B2", `type`="number", `format`="zto", `visible`="(effSizeW2 && (!spherCorrs || (spherCorrs && spherCorrNone)))"),
                    list(`name`="correction[GG]", `title`="Sphericity Correction", `content`="Greenhouse-Geisser", `visible`="(spherCorrs && spherCorrGreenGsser)"),
                    list(`name`="ss[GG]", `title`="Sum of Squares", `type`="number", `visible`="(spherCorrs && spherCorrGreenGsser)"),
                    list(`name`="df[GG]", `title`="df", `type`="number", `visible`="(spherCorrs && spherCorrGreenGsser)"),
                    list(`name`="ms[GG]", `title`="Mean Square", `type`="number", `visible`="(spherCorrs && spherCorrGreenGsser)"),
                    list(`name`="F[GG]", `title`="F", `type`="number", `visible`="(spherCorrs && spherCorrGreenGsser)"),
                    list(`name`="p[GG]", `title`="p", `type`="number", `format`="zto,pvalue", `visible`="(spherCorrs && spherCorrGreenGsser)"),
                    list(`name`="eta[GG]", `title`="\u03B7\u00B2", `type`="number", `format`="zto", `visible`="(effSizeN2 && spherCorrs && spherCorrGreenGsser)"),
                    list(`name`="partEta[GG]", `title`="partial \u03B7\u00B2", `type`="number", `format`="zto", `visible`="(partEffSizeN2 && spherCorrs && spherCorrGreenGsser)"),
                    list(`name`="omega[GG]", `title`="\u03C9\u00B2", `type`="number", `format`="zto", `visible`="(effSizeW2 && spherCorrs && spherCorrGreenGsser)"),
                    list(`name`="correction[HF]", `title`="Sphericity Correction", `content`="Huynh-Feldt", `visible`="(spherCorrs && spherCorrHuyFdt)"),
                    list(`name`="ss[HF]", `title`="Sum of Squares", `type`="number", `visible`="(spherCorrs && spherCorrHuyFdt)"),
                    list(`name`="df[HF]", `title`="df", `type`="number", `visible`="(spherCorrs && spherCorrHuyFdt)"),
                    list(`name`="ms[HF]", `title`="Mean Square", `type`="number", `visible`="(spherCorrs && spherCorrHuyFdt)"),
                    list(`name`="F[HF]", `title`="F", `type`="number", `visible`="(spherCorrs && spherCorrHuyFdt)"),
                    list(`name`="p[HF]", `title`="p", `type`="number", `format`="zto,pvalue", `visible`="(spherCorrs && spherCorrHuyFdt)"),
                    list(`name`="eta[HF]", `title`="\u03B7\u00B2", `type`="number", `format`="zto", `visible`="(effSizeN2 && spherCorrs && spherCorrHuyFdt)"),
                    list(`name`="partEta[HF]", `title`="partial \u03B7\u00B2", `type`="number", `format`="zto", `visible`="(partEffSizeN2 && spherCorrs && spherCorrHuyFdt)"),
                    list(`name`="omega[HF]", `title`="\u03C9\u00B2", `type`="number", `format`="zto", `visible`="(effSizeW2 && spherCorrs && spherCorrHuyFdt)")))
            private$..bsTable <- jmvcore::Table$new(
                options=options,
                name="bsTable",
                title="Between Subjects Effects",
                clearWith=list(
                    "dependent",
                    "ss",
                    "rmCells",
                    "rmcModelTerms",
                    "bscModelTerms",
                    "bs",
                    "rm",
                    "cov",
                    "rmTerms",
                    "bsTerms"),
                columns=list(
                    list(`name`="name", `title`="", `content`=".", `type`="text"),
                    list(`name`="ss", `title`="Sum of Squares", `type`="number"),
                    list(`name`="df", `title`="df", `type`="integer"),
                    list(`name`="ms", `title`="Mean Square", `type`="number"),
                    list(`name`="F", `title`="F", `type`="number"),
                    list(`name`="p", `title`="p", `type`="number", `format`="zto,pvalue"),
                    list(`name`="eta", `title`="\u03B7\u00B2", `type`="number", `format`="zto", `visible`="(effSizeN2)"),
                    list(`name`="partEta", `title`="partial \u03B7\u00B2", `type`="number", `format`="zto", `visible`="(partEffSizeN2)"),
                    list(`name`="omega", `title`="\u03C9\u00B2", `type`="number", `format`="zto", `visible`="(effSizeW2)")))
            private$..assump <- R6::R6Class(
                inherit = jmvcore::Group,
                active = list(
                    spher = function() private$..spher,
                    eqVar = function() private$..eqVar),
                private = list(
                    ..spher = NA,
                    ..eqVar = NA),
                public=list(
                    initialize=function(options) {
                        super$initialize(options=options, name="assump", title="Assumptions")
                        private$..spher <- jmvcore::Table$new(
                            options=options,
                            name="spher",
                            title="Tests of Sphericity",
                            visible="(spherTests)",
                            clearWith=list(
                                "dependent",
                                "ss",
                                "rmCells",
                                "rmcModelTerms",
                                "bscModelTerms",
                                "bs",
                                "rm",
                                "cov",
                                "rmTerms",
                                "bsTerms"),
                            columns=list(
                                list(`name`="name", `title`="", `type`="text"),
                                list(`name`="mauch", `title`="Mauchly's W", `type`="number"),
                                list(`name`="p", `title`="p", `type`="number", `format`="zto,pvalue"),
                                list(`name`="gg", `title`="Greenhouse-Geisser \u03B5", `type`="number"),
                                list(`name`="hf", `title`="Huynh-Feldt \u03B5", `type`="number")))
                        private$..eqVar <- jmvcore::Table$new(
                            options=options,
                            name="eqVar",
                            title="Test for Equality of Variances (Levene's)",
                            visible="(homoTests)",
                            clearWith=list(
                                "bs",
                                "rmCells",
                                "cov"),
                            columns=list(
                                list(`name`="name", `title`="", `type`="text"),
                                list(`name`="F", `type`="number"),
                                list(`name`="df1", `type`="integer"),
                                list(`name`="df2", `type`="integer"),
                                list(`name`="p", `type`="number", `format`="zto,pvalue")))
                        self$add(private$..spher)
                        self$add(private$..eqVar)}))$new(options=options)
            private$..contrasts <- jmvcore::Array$new(
                options=options,
                name="contrasts",
                title="Contrasts",
                items=0,
                visible="(contrasts)",
                template=jmvcore::Table$new(
                    options=options,
                    title="Contrasts - $key",
                    rows=0,
                    columns=list(
                        list(`name`="contrast", `title`="", `type`="text"),
                        list(`name`="est", `title`="Estimate", `type`="number"),
                        list(`name`="se", `title`="SE", `type`="number"),
                        list(`name`="t", `type`="number"),
                        list(`name`="p", `title`="p", `type`="number", `format`="zto,pvalue"))))
            private$..postHoc <- jmvcore::Array$new(
                options=options,
                name="postHoc",
                title="Post Hoc Tests",
                items="(postHoc)",
                template=jmvcore::Table$new(
                    options=options,
                    title="",
                    clearWith=list(
                        "dependent",
                        "ss",
                        "rmCells",
                        "rmcModelTerms",
                        "bscModelTerms",
                        "bs",
                        "rm",
                        "cov",
                        "rmTerms",
                        "bsTerms")))
            private$..descPlot <- jmvcore::Image$new(
                options=options,
                name="descPlot",
                title="Descriptive Plot",
                visible="(descPlotsHAxis)",
                width=500,
                height=300,
                renderInitFun=".descPlot",
                renderFun=".descPlot",
                clearWith=list(
                    "descPlotsHAxis",
                    "descPlotsSepLines",
                    "descPlotsSepPlots",
                    "rm",
                    "dispErrBars",
                    "errBarDef",
                    "ciWidth"))
            private$..descPlots <- jmvcore::Array$new(
                options=options,
                name="descPlots",
                title="Descriptive Plots",
                visible="(descPlotsSepPlots)",
                template=jmvcore::Image$new(
                    options=options,
                    title="$key",
                    renderInitFun=".descPlot",
                    renderFun=".descPlot",
                    clearWith=list(
                        "descPlotsHAxis",
                        "descPlotsSepLines",
                        "descPlotsSepPlots",
                        "rm",
                        "dispErrBars",
                        "errBarDef",
                        "ciWidth")))
            self$add(private$..rmTable)
            self$add(private$..bsTable)
            self$add(private$..assump)
            self$add(private$..contrasts)
            self$add(private$..postHoc)
            self$add(private$..descPlot)
            self$add(private$..descPlots)}))

#' @importFrom jmvcore Analysis
#' @importFrom R6 R6Class
anovaRMBase <- R6::R6Class(
    "anovaRMBase",
    inherit = jmvcore::Analysis,
    public = list(
        initialize = function(options, data=NULL, datasetId="", analysisId="", revision=0) {
            super$initialize(
                package = 'jmv',
                name = 'anovaRM',
                version = c(1,0,0),
                options = options,
                results = anovaRMResults$new(options=options),
                data = data,
                datasetId = datasetId,
                analysisId = analysisId,
                revision = revision)
        }))

#' Repeated Measures ANOVA
#'
#' 
#' @param data the data as a data frame
#' @param rm The Repeated Measures Factors 
#' @param rmCells The Repeated Measures Cells 
#' @param bs The Between Subject Factors 
#' @param cov The Covariates 
#' @param rmTerms The Repeated Measures model terms 
#' @param bsTerms The Between Subjects model terms 
#' @param ss Sum of squares 
#' @param spherTests Sphericity tests 
#' @param spherCorrs Sphericity corrections 
#' @param spherCorrNone No Sphericity corrections 
#' @param spherCorrGreenGsser Greenhouse-Geisser Sphericity corrections 
#' @param spherCorrHuyFdt Huynh-Feldt Sphericity corrections 
#' @param homoTests Display Homogeneity tests 
#' @param contrasts .
#' @param postHoc Post Hoc Tests 
#' @param corrTukey Post Hoc Tests Tukey Correction 
#' @param corrScheffe Post Hoc Tests Scheffe Correction 
#' @param corrBonf Post Hoc Tests Bonferroni Correction 
#' @param corrHolm Post Hoc Tests Holm Correction 
#' @param descPlotsHAxis The Horizontal axis variable 
#' @param descPlotsSepLines The Separate lines variable 
#' @param descPlotsSepPlots The Separate plots variable 
#' @param dispErrBars Error bars displaying 
#' @param errBarDef Specifies the Error Bar definition as either "Confidence 
#'   interval"(default) or "Standard Error" 
#' @param ciWidth .
#' @param dispDescStats Display Descriptive statistics 
#' @param effSizeN2 Effect size n2 
#' @param partEffSizeN2 Effect size partial n2 
#' @param effSizeW2 Effect size w2 
#' @export
anovaRM <- function(
    data,
    rm = list(
                list(label="RM Factor 1", levels=list(
                    "Level 1",
                    "Level 2"))),
    rmCells = NULL,
    bs = NULL,
    cov = NULL,
    rmTerms = NULL,
    bsTerms = NULL,
    ss = "3",
    spherTests = FALSE,
    spherCorrs = FALSE,
    spherCorrNone = TRUE,
    spherCorrGreenGsser = TRUE,
    spherCorrHuyFdt = TRUE,
    homoTests = FALSE,
    contrasts = NULL,
    postHoc = NULL,
    corrTukey = TRUE,
    corrScheffe = FALSE,
    corrBonf = FALSE,
    corrHolm = FALSE,
    descPlotsHAxis = NULL,
    descPlotsSepLines = NULL,
    descPlotsSepPlots = NULL,
    dispErrBars = FALSE,
    errBarDef = "ci",
    ciWidth = 95,
    dispDescStats = FALSE,
    effSizeN2 = FALSE,
    partEffSizeN2 = FALSE,
    effSizeW2 = FALSE) {

    options <- anovaRMOptions$new(
        rm = rm,
        rmCells = rmCells,
        bs = bs,
        cov = cov,
        rmTerms = rmTerms,
        bsTerms = bsTerms,
        ss = ss,
        spherTests = spherTests,
        spherCorrs = spherCorrs,
        spherCorrNone = spherCorrNone,
        spherCorrGreenGsser = spherCorrGreenGsser,
        spherCorrHuyFdt = spherCorrHuyFdt,
        homoTests = homoTests,
        contrasts = contrasts,
        postHoc = postHoc,
        corrTukey = corrTukey,
        corrScheffe = corrScheffe,
        corrBonf = corrBonf,
        corrHolm = corrHolm,
        descPlotsHAxis = descPlotsHAxis,
        descPlotsSepLines = descPlotsSepLines,
        descPlotsSepPlots = descPlotsSepPlots,
        dispErrBars = dispErrBars,
        errBarDef = errBarDef,
        ciWidth = ciWidth,
        dispDescStats = dispDescStats,
        effSizeN2 = effSizeN2,
        partEffSizeN2 = partEffSizeN2,
        effSizeW2 = effSizeW2)

    results <- anovaRMResults$new(
        options = options)

    analysis <- anovaRMClass$new(
        options = options,
        data = data)

    analysis$run()
    analysis$render()

    analysis
}
