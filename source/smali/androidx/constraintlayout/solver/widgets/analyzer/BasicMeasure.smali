.class public Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;,
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    }
.end annotation


# instance fields
.field private constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field private mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 1
    .param p1, "constraintWidgetContainer"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 75
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 76
    return-void
.end method

.method private measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z
    .locals 9
    .param p1, "measurer"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "useCurrentDimensions"    # Z

    .line 403
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 404
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 405
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 406
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 407
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 408
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-boolean p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    .line 410
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 411
    .local v0, "horizontalMatchConstraints":Z
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    .line 412
    .local v2, "verticalMatchConstraints":Z
    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget v5, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v1

    .line 413
    .local v5, "horizontalUseRatio":Z
    :goto_2
    if-eqz v2, :cond_3

    iget v6, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v1

    .line 415
    .local v4, "verticalUseRatio":Z
    :goto_3
    const/4 v6, 0x4

    if-eqz v5, :cond_4

    .line 416
    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v7, v7, v1

    if-ne v7, v6, :cond_4

    .line 417
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 420
    :cond_4
    if-eqz v4, :cond_5

    .line 421
    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v3, v7, v3

    if-ne v3, v6, :cond_5

    .line 422
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v6, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 426
    :cond_5
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {p1, p2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 427
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 428
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 429
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 430
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 431
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-boolean v1, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    .line 432
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    return v1
.end method

.method private measureChildren(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 9
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 79
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 80
    .local v0, "childCount":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v1

    .line 81
    .local v1, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 82
    iget-object v3, p1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 83
    .local v3, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v4, :cond_0

    .line 84
    goto :goto_2

    .line 87
    :cond_0
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_1

    .line 88
    goto :goto_2

    .line 91
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    .line 92
    .local v5, "widthBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    .line 94
    .local v7, "heightBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_2

    iget v8, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v8, v6, :cond_2

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_2

    iget v8, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v8, v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v4

    .line 99
    .local v6, "skip":Z
    :goto_1
    if-eqz v6, :cond_3

    .line 102
    goto :goto_2

    .line 105
    :cond_3
    invoke-direct {p0, v1, v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .end local v3    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v5    # "widthBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v6    # "skip":Z
    .end local v7    # "heightBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 110
    .end local v2    # "i":I
    invoke-interface {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->didMeasures()V

    .line 111
    return-void
.end method

.method private solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V
    .locals 3
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 119
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMinWidth()I

    move-result v0

    .line 120
    .local v0, "minWidth":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMinHeight()I

    move-result v1

    .line 121
    .local v1, "minHeight":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMinWidth(I)V

    .line 122
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMinHeight(I)V

    .line 123
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 124
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 125
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMinWidth(I)V

    .line 126
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMinHeight(I)V

    .line 130
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 135
    return-void
.end method


# virtual methods
.method public solverMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;IIIIIIIII)J
    .locals 32
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "optimizationLevel"    # I
    .param p3, "paddingX"    # I
    .param p4, "paddingY"    # I
    .param p5, "widthMode"    # I
    .param p6, "widthSize"    # I
    .param p7, "heightMode"    # I
    .param p8, "heightSize"    # I
    .param p9, "lastMeasureWidth"    # I
    .param p10, "lastMeasureHeight"    # I

    .line 156
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v5

    .line 157
    .local v5, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    const-wide/16 v6, 0x0

    .line 159
    .local v6, "layoutTime":J
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 160
    .local v8, "childCount":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    .line 161
    .local v9, "startingWidth":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    .line 163
    .local v10, "startingHeight":I
    const/16 v11, 0x80

    invoke-static {v2, v11}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v11

    .line 164
    .local v11, "optimizeWrap":Z
    if-nez v11, :cond_0

    const/16 v14, 0x40

    invoke-static {v2, v14}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    :goto_0
    const/4 v14, 0x1

    .line 166
    .local v14, "optimize":Z
    :goto_1
    if-eqz v14, :cond_a

    .line 167
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v8, :cond_9

    .line 168
    iget-object v12, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 169
    .local v12, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v13

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    .line 170
    .local v2, "matchWidth":Z
    :goto_3
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v13

    move/from16 v18, v14

    .end local v14    # "optimize":Z
    .local v18, "optimize":Z
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v14, :cond_3

    const/4 v13, 0x1

    goto :goto_4

    :cond_3
    const/4 v13, 0x0

    .line 171
    .local v13, "matchHeight":Z
    :goto_4
    if-eqz v2, :cond_4

    if-eqz v13, :cond_4

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v14

    const/16 v19, 0x0

    cmpl-float v14, v14, v19

    if-lez v14, :cond_4

    const/4 v14, 0x1

    goto :goto_5

    :cond_4
    const/4 v14, 0x0

    .line 172
    .local v14, "ratio":Z
    :goto_5
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v19

    if-eqz v19, :cond_5

    if-eqz v14, :cond_5

    .line 173
    const/16 v18, 0x0

    .line 174
    move/from16 v14, v18

    goto :goto_8

    .line 176
    :cond_5
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz v14, :cond_6

    .line 177
    const/16 v18, 0x0

    .line 178
    move/from16 v14, v18

    goto :goto_8

    .line 180
    :cond_6
    nop

    .line 184
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v19

    if-nez v19, :cond_8

    .line 185
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v19

    if-eqz v19, :cond_7

    goto :goto_6

    .line 167
    .end local v2    # "matchWidth":Z
    .end local v12    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v13    # "matchHeight":Z
    .end local v14    # "ratio":Z
    :cond_7
    const/4 v2, 0x1

    add-int/2addr v15, v2

    move/from16 v2, p2

    move/from16 v14, v18

    goto :goto_2

    .line 186
    .restart local v2    # "matchWidth":Z
    .restart local v12    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v13    # "matchHeight":Z
    .restart local v14    # "ratio":Z
    :cond_8
    :goto_6
    const/16 v18, 0x0

    .line 187
    move/from16 v14, v18

    goto :goto_8

    .line 167
    .end local v2    # "matchWidth":Z
    .end local v12    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v13    # "matchHeight":Z
    .end local v18    # "optimize":Z
    .local v14, "optimize":Z
    :cond_9
    move/from16 v18, v14

    .end local v14    # "optimize":Z
    .restart local v18    # "optimize":Z
    goto :goto_7

    .line 166
    .end local v15    # "i":I
    .end local v18    # "optimize":Z
    .restart local v14    # "optimize":Z
    :cond_a
    move/from16 v18, v14

    .line 192
    .end local v14    # "optimize":Z
    .restart local v18    # "optimize":Z
    :goto_7
    move/from16 v14, v18

    .end local v18    # "optimize":Z
    .restart local v14    # "optimize":Z
    :goto_8
    if-eqz v14, :cond_b

    sget-boolean v2, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 196
    :cond_b
    const/4 v2, 0x0

    .line 198
    .local v2, "allSolved":Z
    const/high16 v12, 0x40000000    # 2.0f

    if-ne v3, v12, :cond_c

    if-eq v4, v12, :cond_d

    :cond_c
    if-eqz v11, :cond_e

    :cond_d
    const/4 v13, 0x1

    goto :goto_9

    :cond_e
    const/4 v13, 0x0

    :goto_9
    and-int/2addr v13, v14

    .line 200
    .end local v14    # "optimize":Z
    .local v13, "optimize":Z
    const/4 v14, 0x0

    .line 202
    .local v14, "computations":I
    if-eqz v13, :cond_17

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMaxWidth()I

    move-result v15

    move/from16 v12, p6

    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 207
    .end local p6    # "widthSize":I
    .local v12, "widthSize":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMaxHeight()I

    move-result v15

    move/from16 v19, v2

    move/from16 v2, p8

    .end local v2    # "allSolved":Z
    .local v19, "allSolved":Z
    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 209
    .end local p8    # "heightSize":I
    .local v2, "heightSize":I
    const/high16 v15, 0x40000000    # 2.0f

    if-ne v3, v15, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    if-eq v15, v12, :cond_f

    .line 210
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 213
    :cond_f
    const/high16 v15, 0x40000000    # 2.0f

    if-ne v4, v15, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    if-eq v15, v2, :cond_10

    .line 214
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 217
    :cond_10
    const/high16 v15, 0x40000000    # 2.0f

    if-ne v3, v15, :cond_11

    if-ne v4, v15, :cond_11

    .line 218
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasure(Z)Z

    move-result v15

    .line 219
    .end local v19    # "allSolved":Z
    .local v15, "allSolved":Z
    const/4 v14, 0x2

    move/from16 p6, v2

    move v2, v15

    goto :goto_b

    .line 221
    .end local v15    # "allSolved":Z
    .restart local v19    # "allSolved":Z
    :cond_11
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureSetup(Z)Z

    move-result v15

    .line 222
    .end local v19    # "allSolved":Z
    .restart local v15    # "allSolved":Z
    move/from16 p6, v2

    const/high16 v2, 0x40000000    # 2.0f

    .end local v2    # "heightSize":I
    .local p6, "heightSize":I
    if-ne v3, v2, :cond_12

    .line 223
    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v16

    and-int v15, v15, v16

    .line 224
    const/4 v2, 0x1

    add-int/2addr v14, v2

    goto :goto_a

    .line 222
    :cond_12
    const/4 v2, 0x1

    .line 226
    :goto_a
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v4, v2, :cond_13

    .line 227
    const/4 v2, 0x1

    invoke-virtual {v1, v11, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v17

    and-int v15, v15, v17

    .line 228
    add-int/2addr v14, v2

    move v2, v15

    goto :goto_b

    .line 226
    :cond_13
    move v2, v15

    .line 231
    .end local v15    # "allSolved":Z
    .local v2, "allSolved":Z
    :goto_b
    if-eqz v2, :cond_16

    .line 232
    const/high16 v15, 0x40000000    # 2.0f

    move/from16 p8, v2

    if-ne v3, v15, :cond_14

    const/4 v2, 0x1

    goto :goto_c

    :cond_14
    const/4 v2, 0x0

    .end local v2    # "allSolved":Z
    .local p8, "allSolved":Z
    :goto_c
    if-ne v4, v15, :cond_15

    const/4 v15, 0x1

    goto :goto_d

    :cond_15
    const/4 v15, 0x0

    :goto_d
    invoke-virtual {v1, v2, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    goto :goto_e

    .line 231
    .end local p8    # "allSolved":Z
    .restart local v2    # "allSolved":Z
    :cond_16
    move/from16 p8, v2

    .line 245
    .end local v2    # "allSolved":Z
    .restart local p8    # "allSolved":Z
    :goto_e
    move/from16 v2, p6

    move/from16 v19, p8

    goto :goto_f

    .line 202
    .end local v12    # "widthSize":I
    .restart local v2    # "allSolved":Z
    .local p6, "widthSize":I
    .local p8, "heightSize":I
    :cond_17
    move/from16 v12, p6

    move/from16 v19, v2

    .end local v2    # "allSolved":Z
    .restart local v19    # "allSolved":Z
    move/from16 v2, p8

    .line 245
    .end local p6    # "widthSize":I
    .end local p8    # "heightSize":I
    .local v2, "heightSize":I
    .restart local v12    # "widthSize":I
    :goto_f
    if-eqz v19, :cond_18

    const/4 v15, 0x2

    if-eq v14, v15, :cond_19

    :cond_18
    goto :goto_10

    :cond_19
    move/from16 p6, v2

    move-object/from16 v28, v5

    move-wide/from16 v24, v6

    move/from16 v18, v8

    move/from16 v16, v11

    move/from16 p8, v12

    move/from16 v20, v13

    move/from16 v21, v14

    goto/16 :goto_1b

    .line 246
    :goto_10
    if-lez v8, :cond_1a

    .line 247
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measureChildren(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 252
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v15

    .line 255
    .local v15, "optimizations":I
    move/from16 p6, v2

    .end local v2    # "heightSize":I
    .local p6, "heightSize":I
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 258
    .local v2, "sizeDependentWidgetsCount":I
    if-lez v8, :cond_1b

    .line 259
    const-string v3, "First pass"

    invoke-direct {v0, v1, v3, v9, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 266
    :cond_1b
    if-lez v2, :cond_2e

    .line 267
    const/4 v3, 0x0

    .line 268
    .local v3, "needSolverPass":Z
    move/from16 p8, v3

    .end local v3    # "needSolverPass":Z
    .local p8, "needSolverPass":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1c

    const/4 v3, 0x1

    goto :goto_11

    :cond_1c
    const/4 v3, 0x0

    .line 270
    .local v3, "containerWrapWidth":Z
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    move/from16 v18, v8

    .end local v8    # "childCount":I
    .local v18, "childCount":I
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v8, :cond_1d

    const/16 v16, 0x1

    goto :goto_12

    :cond_1d
    const/16 v16, 0x0

    :goto_12
    move/from16 v4, v16

    .line 272
    .local v4, "containerWrapHeight":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    move/from16 v16, v11

    .end local v11    # "optimizeWrap":Z
    .local v16, "optimizeWrap":Z
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMinWidth()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 273
    .local v8, "minWidth":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v11

    move/from16 v20, v8

    .end local v8    # "minWidth":I
    .local v20, "minWidth":I
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMinHeight()I

    move-result v8

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 278
    .local v8, "minHeight":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_13
    if-ge v11, v2, :cond_1e

    .line 279
    move/from16 v21, v8

    .end local v8    # "minHeight":I
    .local v21, "minHeight":I
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 280
    .local v8, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    nop

    .line 281
    nop

    .line 278
    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v8, 0x1

    add-int/2addr v11, v8

    move/from16 v8, v21

    goto :goto_13

    .end local v21    # "minHeight":I
    .local v8, "minHeight":I
    :cond_1e
    move/from16 v21, v8

    .line 314
    .end local v8    # "minHeight":I
    .end local v11    # "i":I
    .restart local v21    # "minHeight":I
    const/4 v8, 0x2

    .line 315
    .local v8, "maxIterations":I
    const/4 v11, 0x0

    move/from16 v31, v11

    move/from16 v11, p8

    move/from16 p8, v12

    move/from16 v12, v20

    move/from16 v20, v13

    move/from16 v13, v21

    move/from16 v21, v14

    move/from16 v14, v31

    .local v11, "needSolverPass":Z
    .local v12, "minWidth":I
    .local v13, "minHeight":I
    .local v14, "j":I
    .local v20, "optimize":Z
    .local v21, "computations":I
    .local p8, "widthSize":I
    :goto_14
    if-ge v14, v8, :cond_2b

    .line 316
    const/16 v22, 0x0

    move/from16 v31, v22

    move/from16 v22, v8

    move/from16 v8, v31

    .local v8, "i":I
    .local v22, "maxIterations":I
    :goto_15
    if-ge v8, v2, :cond_29

    .line 317
    move/from16 v23, v2

    .end local v2    # "sizeDependentWidgetsCount":I
    .local v23, "sizeDependentWidgetsCount":I
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 318
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-wide/from16 v24, v6

    .end local v6    # "layoutTime":J
    .local v24, "layoutTime":J
    instance-of v6, v2, Landroidx/constraintlayout/solver/widgets/Helper;

    if-eqz v6, :cond_1f

    goto :goto_16

    :cond_1f
    instance-of v6, v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v6, :cond_20

    .line 319
    goto :goto_16

    .line 321
    :cond_20
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_21

    .line 322
    goto :goto_16

    .line 324
    :cond_21
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v6, :cond_22

    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v6, :cond_22

    .line 325
    nop

    .line 316
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_16
    move/from16 v29, v3

    move-object/from16 v28, v5

    move/from16 v27, v14

    move/from16 v26, v15

    goto/16 :goto_19

    .line 327
    .restart local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_22
    nop

    .line 331
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    .line 332
    .local v6, "preWidth":I
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    .line 333
    .local v7, "preHeight":I
    move/from16 v26, v15

    .end local v15    # "optimizations":I
    .local v26, "optimizations":I
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v15

    .line 335
    .local v15, "preBaselineDistance":I
    move/from16 v27, v14

    const/4 v14, 0x1

    .end local v14    # "j":I
    .local v27, "j":I
    invoke-direct {v0, v5, v2, v14}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    move-result v28

    or-int v11, v11, v28

    .line 336
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    .line 341
    .local v14, "measuredWidth":I
    move-object/from16 v28, v5

    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v28, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    .line 343
    .local v5, "measuredHeight":I
    if-eq v14, v6, :cond_25

    .line 344
    invoke-virtual {v2, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 345
    if-eqz v3, :cond_24

    move/from16 v29, v3

    .end local v3    # "containerWrapWidth":Z
    .local v29, "containerWrapWidth":Z
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v3

    if-le v3, v12, :cond_23

    .line 346
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v3

    move/from16 v30, v6

    .end local v6    # "preWidth":I
    .local v30, "preWidth":I
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 347
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v3, v6

    .line 348
    .local v3, "w":I
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_17

    .line 345
    .end local v3    # "w":I
    .end local v30    # "preWidth":I
    .restart local v6    # "preWidth":I
    :cond_23
    move/from16 v30, v6

    .end local v6    # "preWidth":I
    .restart local v30    # "preWidth":I
    goto :goto_17

    .end local v29    # "containerWrapWidth":Z
    .end local v30    # "preWidth":I
    .local v3, "containerWrapWidth":Z
    .restart local v6    # "preWidth":I
    :cond_24
    move/from16 v29, v3

    move/from16 v30, v6

    .line 350
    .end local v3    # "containerWrapWidth":Z
    .end local v6    # "preWidth":I
    .restart local v29    # "containerWrapWidth":Z
    .restart local v30    # "preWidth":I
    :goto_17
    const/4 v11, 0x1

    goto :goto_18

    .line 343
    .end local v29    # "containerWrapWidth":Z
    .end local v30    # "preWidth":I
    .restart local v3    # "containerWrapWidth":Z
    .restart local v6    # "preWidth":I
    :cond_25
    move/from16 v29, v3

    move/from16 v30, v6

    .line 352
    .end local v3    # "containerWrapWidth":Z
    .end local v6    # "preWidth":I
    .restart local v29    # "containerWrapWidth":Z
    .restart local v30    # "preWidth":I
    :goto_18
    if-eq v5, v7, :cond_27

    .line 353
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 354
    if-eqz v4, :cond_26

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v3

    if-le v3, v13, :cond_26

    .line 355
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v3

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 356
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v3, v6

    .line 357
    .local v3, "h":I
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 359
    .end local v3    # "h":I
    :cond_26
    const/4 v11, 0x1

    .line 361
    :cond_27
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v3

    if-eq v15, v3, :cond_28

    .line 362
    const/4 v3, 0x1

    move v11, v3

    .line 316
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v5    # "measuredHeight":I
    .end local v7    # "preHeight":I
    .end local v14    # "measuredWidth":I
    .end local v15    # "preBaselineDistance":I
    .end local v30    # "preWidth":I
    :cond_28
    :goto_19
    const/4 v2, 0x1

    add-int/2addr v8, v2

    move/from16 v2, v23

    move-wide/from16 v6, v24

    move/from16 v15, v26

    move/from16 v14, v27

    move-object/from16 v5, v28

    move/from16 v3, v29

    goto/16 :goto_15

    .end local v23    # "sizeDependentWidgetsCount":I
    .end local v24    # "layoutTime":J
    .end local v26    # "optimizations":I
    .end local v27    # "j":I
    .end local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v29    # "containerWrapWidth":Z
    .local v2, "sizeDependentWidgetsCount":I
    .local v3, "containerWrapWidth":Z
    .local v5, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v6, "layoutTime":J
    .local v14, "j":I
    .local v15, "optimizations":I
    :cond_29
    move/from16 v23, v2

    move/from16 v29, v3

    move-object/from16 v28, v5

    move-wide/from16 v24, v6

    move/from16 v27, v14

    move/from16 v26, v15

    .line 365
    .end local v2    # "sizeDependentWidgetsCount":I
    .end local v3    # "containerWrapWidth":Z
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v6    # "layoutTime":J
    .end local v8    # "i":I
    .end local v14    # "j":I
    .end local v15    # "optimizations":I
    .restart local v23    # "sizeDependentWidgetsCount":I
    .restart local v24    # "layoutTime":J
    .restart local v26    # "optimizations":I
    .restart local v27    # "j":I
    .restart local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v29    # "containerWrapWidth":Z
    if-eqz v11, :cond_2a

    .line 366
    const-string v2, "intermediate pass"

    invoke-direct {v0, v1, v2, v9, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 367
    const/4 v2, 0x0

    move v11, v2

    .line 315
    :cond_2a
    const/4 v2, 0x1

    add-int/lit8 v14, v27, 0x1

    move/from16 v8, v22

    move/from16 v2, v23

    move-wide/from16 v6, v24

    move/from16 v15, v26

    move-object/from16 v5, v28

    move/from16 v3, v29

    .end local v27    # "j":I
    .restart local v14    # "j":I
    goto/16 :goto_14

    .end local v22    # "maxIterations":I
    .end local v23    # "sizeDependentWidgetsCount":I
    .end local v24    # "layoutTime":J
    .end local v26    # "optimizations":I
    .end local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v29    # "containerWrapWidth":Z
    .restart local v2    # "sizeDependentWidgetsCount":I
    .restart local v3    # "containerWrapWidth":Z
    .restart local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v6    # "layoutTime":J
    .local v8, "maxIterations":I
    .restart local v15    # "optimizations":I
    :cond_2b
    move/from16 v23, v2

    move/from16 v29, v3

    move-object/from16 v28, v5

    move-wide/from16 v24, v6

    move/from16 v22, v8

    move/from16 v27, v14

    move/from16 v26, v15

    .line 370
    .end local v2    # "sizeDependentWidgetsCount":I
    .end local v3    # "containerWrapWidth":Z
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v6    # "layoutTime":J
    .end local v8    # "maxIterations":I
    .end local v14    # "j":I
    .end local v15    # "optimizations":I
    .restart local v22    # "maxIterations":I
    .restart local v23    # "sizeDependentWidgetsCount":I
    .restart local v24    # "layoutTime":J
    .restart local v26    # "optimizations":I
    .restart local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v29    # "containerWrapWidth":Z
    if-eqz v11, :cond_2f

    .line 371
    const-string v2, "2nd pass"

    invoke-direct {v0, v1, v2, v9, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 372
    const/4 v2, 0x0

    .line 373
    .end local v11    # "needSolverPass":Z
    .local v2, "needSolverPass":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    if-ge v3, v12, :cond_2c

    .line 374
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 375
    const/4 v2, 0x1

    .line 377
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    if-ge v3, v13, :cond_2d

    .line 378
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 379
    const/4 v2, 0x1

    .line 381
    :cond_2d
    if-eqz v2, :cond_2f

    .line 382
    const-string v3, "3rd pass"

    invoke-direct {v0, v1, v3, v9, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    goto :goto_1a

    .line 266
    .end local v4    # "containerWrapHeight":Z
    .end local v16    # "optimizeWrap":Z
    .end local v18    # "childCount":I
    .end local v20    # "optimize":Z
    .end local v21    # "computations":I
    .end local v22    # "maxIterations":I
    .end local v23    # "sizeDependentWidgetsCount":I
    .end local v24    # "layoutTime":J
    .end local v26    # "optimizations":I
    .end local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v29    # "containerWrapWidth":Z
    .end local p8    # "widthSize":I
    .local v2, "sizeDependentWidgetsCount":I
    .restart local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v6    # "layoutTime":J
    .local v8, "childCount":I
    .local v11, "optimizeWrap":Z
    .local v12, "widthSize":I
    .local v13, "optimize":Z
    .local v14, "computations":I
    .restart local v15    # "optimizations":I
    :cond_2e
    move/from16 v23, v2

    move-object/from16 v28, v5

    move-wide/from16 v24, v6

    move/from16 v18, v8

    move/from16 v16, v11

    move/from16 p8, v12

    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v26, v15

    .line 386
    .end local v2    # "sizeDependentWidgetsCount":I
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v6    # "layoutTime":J
    .end local v8    # "childCount":I
    .end local v11    # "optimizeWrap":Z
    .end local v12    # "widthSize":I
    .end local v13    # "optimize":Z
    .end local v14    # "computations":I
    .end local v15    # "optimizations":I
    .restart local v16    # "optimizeWrap":Z
    .restart local v18    # "childCount":I
    .restart local v20    # "optimize":Z
    .restart local v21    # "computations":I
    .restart local v23    # "sizeDependentWidgetsCount":I
    .restart local v24    # "layoutTime":J
    .restart local v26    # "optimizations":I
    .restart local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local p8    # "widthSize":I
    :cond_2f
    :goto_1a
    move/from16 v2, v26

    .end local v26    # "optimizations":I
    .local v2, "optimizations":I
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 391
    .end local v2    # "optimizations":I
    .end local v23    # "sizeDependentWidgetsCount":I
    :goto_1b
    return-wide v24
.end method

.method public updateHierarchy(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 5
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 56
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 57
    iget-object v2, p1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 58
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    .line 59
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    .line 60
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    .line 61
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1

    .line 62
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 65
    .end local v1    # "i":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 66
    return-void
.end method
