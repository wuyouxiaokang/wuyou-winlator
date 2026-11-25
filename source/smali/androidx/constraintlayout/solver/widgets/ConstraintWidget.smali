.class public Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    }
.end annotation


# static fields
.field public static DEFAULT_BIAS:F


# instance fields
.field private hasBaseline:Z

.field public horizontalChainRun:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

.field public horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

.field private inPlaceholder:Z

.field public isTerminalWidget:[Z

.field protected mAnchors:Ljava/util/ArrayList;

.field mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mBaselineDistance:I

.field public mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mCircleConstraintAngle:F

.field private mCompanionWidget:Ljava/lang/Object;

.field private mContainerItemSkip:I

.field private mDebugName:Ljava/lang/String;

.field public mDimensionRatio:F

.field protected mDimensionRatioSide:I

.field mGroupsToSolver:Z

.field mHeight:I

.field mHorizontalBiasPercent:F

.field mHorizontalChainFixedPosition:Z

.field mHorizontalChainStyle:I

.field mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public mHorizontalResolution:I

.field mHorizontalWrapVisited:Z

.field private mInVirtuaLayout:Z

.field private mIsInBarrier:[Z

.field public mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field protected mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public mMatchConstraintDefaultHeight:I

.field public mMatchConstraintDefaultWidth:I

.field public mMatchConstraintMaxHeight:I

.field public mMatchConstraintMaxWidth:I

.field public mMatchConstraintMinHeight:I

.field public mMatchConstraintMinWidth:I

.field public mMatchConstraintPercentHeight:F

.field public mMatchConstraintPercentWidth:F

.field private mMaxDimension:[I

.field protected mMinHeight:I

.field protected mMinWidth:I

.field protected mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mOffsetX:I

.field protected mOffsetY:I

.field mOptimizerMeasurable:Z

.field public mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field mRelX:I

.field mRelY:I

.field mResolvedDimensionRatio:F

.field mResolvedDimensionRatioSide:I

.field mResolvedHasRatio:Z

.field public mResolvedMatchConstraintDefault:[I

.field public mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mType:Ljava/lang/String;

.field mVerticalBiasPercent:F

.field mVerticalChainFixedPosition:Z

.field mVerticalChainStyle:I

.field mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public mVerticalResolution:I

.field mVerticalWrapVisited:Z

.field private mVisibility:I

.field public mWeight:[F

.field mWidth:I

.field protected mX:I

.field protected mY:I

.field public measured:Z

.field public run:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

.field public verticalChainRun:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

.field public verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

.field public wrapMeasure:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 252
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    .line 60
    const/4 v1, 0x2

    new-array v2, v1, [Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->run:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 64
    new-instance v2, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 65
    new-instance v2, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 67
    new-array v2, v1, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    .line 68
    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    .line 69
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 102
    const/4 v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 103
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 107
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 108
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 109
    new-array v3, v1, [I

    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 111
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 112
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 113
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 114
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 115
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 116
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 120
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 121
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 123
    const v3, 0x7fffffff

    filled-new-array {v3, v3}, [I

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 124
    const/4 v3, 0x0

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 125
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 128
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 199
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 200
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 201
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 202
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 203
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 204
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 205
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 206
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 214
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    filled-new-array/range {v6 .. v11}, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 215
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 217
    new-array v4, v1, [Z

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 222
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    filled-new-array {v4, v5}, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 225
    const/4 v4, 0x0

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 228
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 229
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 230
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 231
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 234
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 235
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 236
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    .line 237
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    .line 240
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 241
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 244
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 253
    sget v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 254
    sget v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 262
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 265
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 267
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 268
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 280
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 281
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 284
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 285
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 289
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    .line 291
    filled-new-array {v4, v4}, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 292
    filled-new-array {v4, v4}, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 294
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 295
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 368
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 369
    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private addAnchors()V
    .locals 2

    .line 415
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    return-void
.end method

.method private applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZZIIIIFZ)V
    .locals 35
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "isHorizontal"    # Z
    .param p3, "parentWrapContent"    # Z
    .param p4, "oppositeParentWrapContent"    # Z
    .param p5, "isTerminal"    # Z
    .param p6, "parentMin"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p7, "parentMax"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p8, "dimensionBehaviour"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .param p9, "wrapContent"    # Z
    .param p10, "beginAnchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p11, "endAnchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p12, "beginPosition"    # I
    .param p13, "dimension"    # I
    .param p14, "minDimension"    # I
    .param p15, "maxDimension"    # I
    .param p16, "bias"    # F
    .param p17, "useRatio"    # Z
    .param p18, "inChain"    # Z
    .param p19, "oppositeInChain"    # Z
    .param p20, "inBarrier"    # Z
    .param p21, "matchConstraintDefault"    # I
    .param p22, "oppositeMatchConstraintDefault"    # I
    .param p23, "matchMinDimension"    # I
    .param p24, "matchMaxDimension"    # I
    .param p25, "matchPercentDimension"    # F
    .param p26, "applyPosition"    # Z

    .line 2349
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v9, p15

    move/from16 v8, p22

    move/from16 v1, p23

    move/from16 v2, p24

    invoke-virtual {v10, v13}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    .line 2350
    .local v7, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    .line 2351
    .local v6, "end":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    .line 2352
    .local v5, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    .line 2354
    .local v4, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    .line 2358
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v16

    .line 2359
    .local v16, "isBeginConnected":Z
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v17

    .line 2360
    .local v17, "isEndConnected":Z
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v18

    .line 2362
    .local v18, "isCenterConnected":Z
    const/4 v3, 0x0

    .line 2364
    .local v3, "variableSize":Z
    const/16 v19, 0x0

    .line 2365
    .local v19, "numConnections":I
    if-eqz v16, :cond_0

    .line 2366
    add-int/lit8 v19, v19, 0x1

    .line 2368
    :cond_0
    if-eqz v17, :cond_1

    .line 2369
    add-int/lit8 v19, v19, 0x1

    .line 2371
    :cond_1
    if-eqz v18, :cond_2

    .line 2372
    add-int/lit8 v19, v19, 0x1

    move/from16 v12, v19

    goto :goto_0

    .line 2371
    :cond_2
    move/from16 v12, v19

    .line 2375
    .end local v19    # "numConnections":I
    .local v12, "numConnections":I
    :goto_0
    if-eqz p17, :cond_3

    .line 2376
    const/16 v19, 0x3

    move/from16 v8, v19

    .end local p21    # "matchConstraintDefault":I
    .local v19, "matchConstraintDefault":I
    goto :goto_1

    .line 2375
    .end local v19    # "matchConstraintDefault":I
    .restart local p21    # "matchConstraintDefault":I
    :cond_3
    move/from16 v8, p21

    .line 2378
    .end local p21    # "matchConstraintDefault":I
    .local v8, "matchConstraintDefault":I
    :goto_1
    sget-object v19, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    goto :goto_2

    .line 2392
    :pswitch_0
    const/4 v3, 0x1

    .line 2393
    move/from16 p21, v3

    .end local v3    # "variableSize":Z
    .local p21, "variableSize":Z
    const/4 v3, 0x4

    if-ne v8, v3, :cond_4

    .line 2394
    const/4 v3, 0x0

    .end local p21    # "variableSize":Z
    .restart local v3    # "variableSize":Z
    goto :goto_2

    .line 2393
    .end local v3    # "variableSize":Z
    .restart local p21    # "variableSize":Z
    :cond_4
    move/from16 v3, p21

    goto :goto_2

    .line 2388
    .end local p21    # "variableSize":Z
    .restart local v3    # "variableSize":Z
    :pswitch_1
    const/4 v3, 0x0

    .line 2390
    goto :goto_2

    .line 2384
    :pswitch_2
    const/4 v3, 0x0

    .line 2386
    goto :goto_2

    .line 2380
    :pswitch_3
    const/4 v3, 0x0

    .line 2382
    nop

    .line 2400
    :goto_2
    move/from16 p21, v3

    .end local v3    # "variableSize":Z
    .restart local p21    # "variableSize":Z
    iget v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v14, 0x8

    if-ne v3, v14, :cond_5

    .line 2401
    const/4 v3, 0x0

    .line 2402
    .end local p13    # "dimension":I
    .local v3, "dimension":I
    const/16 v19, 0x0

    .end local p21    # "variableSize":Z
    .local v19, "variableSize":Z
    goto :goto_3

    .line 2400
    .end local v3    # "dimension":I
    .end local v19    # "variableSize":Z
    .restart local p13    # "dimension":I
    .restart local p21    # "variableSize":Z
    :cond_5
    move/from16 v3, p13

    move/from16 v19, p21

    .line 2406
    .end local p13    # "dimension":I
    .end local p21    # "variableSize":Z
    .restart local v3    # "dimension":I
    .restart local v19    # "variableSize":Z
    :goto_3
    if-eqz p26, :cond_8

    .line 2407
    if-nez v16, :cond_6

    if-nez v17, :cond_6

    if-nez v18, :cond_6

    .line 2408
    move/from16 v14, p12

    invoke-virtual {v10, v7, v14}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    move-object/from16 v20, v4

    goto :goto_4

    .line 2407
    :cond_6
    move/from16 v14, p12

    .line 2409
    if-eqz v16, :cond_7

    if-nez v17, :cond_7

    .line 2410
    move-object/from16 v20, v4

    .end local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v20, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    const/16 v14, 0x8

    invoke-virtual {v10, v7, v5, v4, v14}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_4

    .line 2409
    .end local v20    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_7
    move-object/from16 v20, v4

    .end local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v20    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    goto :goto_4

    .line 2406
    .end local v20    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_8
    move-object/from16 v20, v4

    .line 2415
    .end local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v20    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_4
    const/4 v14, 0x0

    if-nez v19, :cond_c

    .line 2416
    if-eqz p9, :cond_a

    .line 2417
    const/4 v4, 0x3

    invoke-virtual {v10, v6, v7, v14, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2418
    if-lez v15, :cond_9

    .line 2419
    const/16 v4, 0x8

    invoke-virtual {v10, v6, v7, v15, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_5

    .line 2418
    :cond_9
    const/16 v4, 0x8

    .line 2421
    :goto_5
    const v14, 0x7fffffff

    if-ge v9, v14, :cond_b

    .line 2422
    invoke-virtual {v10, v6, v7, v9, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_6

    .line 2425
    :cond_a
    const/16 v4, 0x8

    invoke-virtual {v10, v6, v7, v3, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2496
    :cond_b
    :goto_6
    move/from16 v14, p5

    move/from16 v22, v2

    move/from16 v26, v3

    move-object/from16 v27, v5

    move/from16 v24, v19

    move-object/from16 v9, v20

    move/from16 v19, v1

    move/from16 v20, v12

    move-object v12, v6

    goto/16 :goto_c

    .line 2428
    :cond_c
    const/4 v4, 0x2

    if-eq v12, v4, :cond_f

    if-nez p17, :cond_f

    const/4 v4, 0x1

    if-eq v8, v4, :cond_d

    if-nez v8, :cond_f

    .line 2432
    :cond_d
    const/16 v19, 0x0

    .line 2433
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2434
    .local v4, "d":I
    if-lez v2, :cond_e

    .line 2435
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2437
    :cond_e
    const/16 v14, 0x8

    invoke-virtual {v10, v6, v7, v4, v14}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2438
    .end local v4    # "d":I
    move/from16 v14, p5

    move/from16 v22, v2

    move/from16 v26, v3

    move-object/from16 v27, v5

    move/from16 v24, v19

    move-object/from16 v9, v20

    move/from16 v19, v1

    move/from16 v20, v12

    move-object v12, v6

    goto/16 :goto_c

    .line 2439
    :cond_f
    const/4 v4, -0x2

    if-ne v1, v4, :cond_10

    .line 2440
    move v1, v3

    move v14, v1

    .end local p23    # "matchMinDimension":I
    .local v1, "matchMinDimension":I
    goto :goto_7

    .line 2439
    .end local v1    # "matchMinDimension":I
    .restart local p23    # "matchMinDimension":I
    :cond_10
    move v14, v1

    .line 2442
    .end local p23    # "matchMinDimension":I
    .local v14, "matchMinDimension":I
    :goto_7
    if-ne v2, v4, :cond_11

    .line 2443
    move v1, v3

    move v4, v1

    .end local p24    # "matchMaxDimension":I
    .local v1, "matchMaxDimension":I
    goto :goto_8

    .line 2442
    .end local v1    # "matchMaxDimension":I
    .restart local p24    # "matchMaxDimension":I
    :cond_11
    move v4, v2

    .line 2445
    .end local p24    # "matchMaxDimension":I
    .local v4, "matchMaxDimension":I
    :goto_8
    if-lez v3, :cond_12

    const/4 v1, 0x1

    if-eq v8, v1, :cond_12

    .line 2450
    const/4 v3, 0x0

    .line 2453
    :cond_12
    if-lez v14, :cond_13

    .line 2454
    const/16 v1, 0x8

    invoke-virtual {v10, v6, v7, v14, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2455
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2457
    :cond_13
    if-lez v4, :cond_16

    .line 2458
    const/4 v1, 0x1

    .line 2459
    .local v1, "applyLimit":Z
    if-eqz p3, :cond_14

    const/4 v2, 0x1

    if-ne v8, v2, :cond_14

    .line 2460
    const/4 v1, 0x0

    .line 2462
    :cond_14
    if-eqz v1, :cond_15

    .line 2463
    const/16 v2, 0x8

    invoke-virtual {v10, v6, v7, v4, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2465
    :cond_15
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    .line 2467
    .end local v1    # "applyLimit":Z
    :cond_16
    const/4 v2, 0x1

    if-ne v8, v2, :cond_19

    .line 2468
    if-eqz p3, :cond_17

    .line 2469
    const/16 v1, 0x8

    invoke-virtual {v10, v6, v7, v3, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_9

    .line 2470
    :cond_17
    const/16 v1, 0x8

    if-eqz p18, :cond_18

    .line 2471
    const/4 v2, 0x5

    invoke-virtual {v10, v6, v7, v3, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2472
    invoke-virtual {v10, v6, v7, v3, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_9

    .line 2474
    :cond_18
    const/4 v2, 0x5

    invoke-virtual {v10, v6, v7, v3, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2475
    invoke-virtual {v10, v6, v7, v3, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2496
    :goto_9
    move/from16 v26, v3

    move/from16 v22, v4

    move-object/from16 v27, v5

    move/from16 v24, v19

    move-object/from16 v9, v20

    move/from16 v20, v12

    move/from16 v19, v14

    move/from16 v14, p5

    move-object v12, v6

    goto/16 :goto_c

    .line 2477
    :cond_19
    const/4 v1, 0x2

    if-ne v8, v1, :cond_1c

    .line 2478
    const/4 v1, 0x0

    .line 2479
    .local v1, "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v2, 0x0

    .line 2480
    .local v2, "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 p23, v1

    .end local v1    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .local p23, "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    move-object/from16 p24, v2

    .end local v2    # "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    .local p24, "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_1a

    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_1b

    :cond_1a
    goto :goto_a

    .line 2485
    :cond_1b
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 2486
    .end local p23    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v1    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 p23, v1

    .end local v1    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local p23    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    move-object/from16 v25, p23

    move-object/from16 v24, v1

    .end local p24    # "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    .local v1, "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    goto :goto_b

    .line 2482
    .end local v1    # "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local p24    # "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_a
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 2483
    .end local p23    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v1, "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 p23, v1

    .end local v1    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local p23    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    move-object/from16 v25, p23

    move-object/from16 v24, v1

    .line 2488
    .end local p23    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local p24    # "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    .local v24, "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    .local v25, "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v1

    const/16 v23, 0x1

    move-object v2, v6

    move/from16 v26, v3

    .end local v3    # "dimension":I
    .local v26, "dimension":I
    move-object v3, v7

    move/from16 v22, v4

    move-object/from16 v9, v20

    move/from16 v20, v12

    const/4 v12, 0x3

    .end local v4    # "matchMaxDimension":I
    .end local v12    # "numConnections":I
    .local v9, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v20, "numConnections":I
    .local v22, "matchMaxDimension":I
    move-object/from16 v4, v24

    move-object/from16 v27, v5

    .end local v5    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v27, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v5, v25

    move-object v12, v6

    .end local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v12, "end":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v6, p25

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 2489
    const/16 v19, 0x0

    .line 2490
    .end local v24    # "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v25    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v24, v19

    move/from16 v19, v14

    move/from16 v14, p5

    goto :goto_c

    .line 2491
    .end local v9    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v22    # "matchMaxDimension":I
    .end local v26    # "dimension":I
    .end local v27    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v3    # "dimension":I
    .restart local v4    # "matchMaxDimension":I
    .restart local v5    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v12, "numConnections":I
    .local v20, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1c
    move/from16 v26, v3

    move/from16 v22, v4

    move-object/from16 v27, v5

    move-object/from16 v9, v20

    move/from16 v20, v12

    move-object v12, v6

    .end local v3    # "dimension":I
    .end local v4    # "matchMaxDimension":I
    .end local v5    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v9    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v12, "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v20, "numConnections":I
    .restart local v22    # "matchMaxDimension":I
    .restart local v26    # "dimension":I
    .restart local v27    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v1, 0x1

    move/from16 v24, v19

    move/from16 v19, v14

    move v14, v1

    .line 2496
    .end local p5    # "isTerminal":Z
    .local v14, "isTerminal":Z
    .local v19, "matchMinDimension":I
    .local v24, "variableSize":Z
    :goto_c
    if-eqz p26, :cond_55

    if-eqz p18, :cond_1d

    move-object/from16 v3, p7

    move-object/from16 v2, p11

    move-object v13, v7

    move-object v7, v11

    move-object v4, v12

    move/from16 p5, v14

    move/from16 v5, v20

    move v11, v8

    move-object v12, v9

    move-object/from16 v8, v27

    goto/16 :goto_20

    .line 2526
    :cond_1d
    const/4 v6, 0x5

    .line 2528
    .local v6, "wrapStrength":I
    if-nez v16, :cond_1e

    if-nez v17, :cond_1e

    if-nez v18, :cond_1e

    move-object v13, v7

    move-object v7, v11

    move-object v4, v12

    move/from16 p5, v14

    move v11, v8

    move-object v12, v9

    move-object/from16 v8, v27

    move v9, v6

    goto/16 :goto_1e

    .line 2530
    :cond_1e
    if-eqz v16, :cond_1f

    if-nez v17, :cond_1f

    move-object v13, v7

    move-object v7, v11

    move-object v4, v12

    move/from16 p5, v14

    move v11, v8

    move-object v12, v9

    move-object/from16 v8, v27

    move v9, v6

    goto/16 :goto_1e

    .line 2532
    :cond_1f
    if-nez v16, :cond_21

    if-eqz v17, :cond_21

    .line 2533
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    const/16 v2, 0x8

    invoke-virtual {v10, v12, v9, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2534
    if-eqz p3, :cond_20

    .line 2535
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v10, v7, v11, v2, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    move-object v13, v7

    move-object v7, v11

    move-object v4, v12

    move/from16 p5, v14

    move v11, v8

    move-object v12, v9

    move-object/from16 v8, v27

    move v9, v6

    goto/16 :goto_1e

    .line 2534
    :cond_20
    move-object v13, v7

    move-object v7, v11

    move-object v4, v12

    move/from16 p5, v14

    move v11, v8

    move-object v12, v9

    move-object/from16 v8, v27

    move v9, v6

    goto/16 :goto_1e

    .line 2532
    :cond_21
    const/16 v2, 0x8

    .line 2537
    if-eqz v16, :cond_51

    if-eqz v17, :cond_51

    .line 2539
    const/4 v1, 0x1

    .line 2540
    .local v1, "applyBoundsCheck":Z
    const/4 v3, 0x0

    .line 2541
    .local v3, "applyCentering":Z
    const/4 v4, 0x0

    .line 2542
    .local v4, "applyStrongChecks":Z
    const/4 v5, 0x0

    .line 2543
    .local v5, "applyRangeCheck":Z
    const/16 v25, 0x5

    .line 2544
    .local v25, "rangeCheckStrength":I
    const/16 v28, 0x4

    .line 2545
    .local v28, "boundsCheckStrength":I
    const/16 v29, 0x6

    .line 2547
    .local v29, "centeringStrength":I
    nop

    .line 2548
    const/16 v25, 0x5

    .line 2550
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2551
    .local v2, "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v13, p11

    move/from16 p5, v14

    .end local v14    # "isTerminal":Z
    .restart local p5    # "isTerminal":Z
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2552
    .local v14, "endWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v13

    .line 2554
    .local v13, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v24, :cond_33

    .line 2555
    if-nez v8, :cond_25

    .line 2556
    if-nez v22, :cond_22

    if-nez v19, :cond_22

    .line 2557
    const/4 v4, 0x1

    .line 2558
    const/16 v21, 0x8

    .line 2559
    .end local v25    # "rangeCheckStrength":I
    .local v21, "rangeCheckStrength":I
    const/16 v23, 0x8

    move/from16 v25, v21

    move/from16 v28, v23

    .end local v28    # "boundsCheckStrength":I
    .local v23, "boundsCheckStrength":I
    goto :goto_d

    .line 2561
    .end local v21    # "rangeCheckStrength":I
    .end local v23    # "boundsCheckStrength":I
    .restart local v25    # "rangeCheckStrength":I
    .restart local v28    # "boundsCheckStrength":I
    :cond_22
    const/4 v3, 0x1

    .line 2562
    const/16 v21, 0x5

    .line 2563
    .end local v25    # "rangeCheckStrength":I
    .restart local v21    # "rangeCheckStrength":I
    const/16 v23, 0x5

    move/from16 v25, v21

    move/from16 v28, v23

    .line 2565
    .end local v21    # "rangeCheckStrength":I
    .restart local v25    # "rangeCheckStrength":I
    :goto_d
    move/from16 p13, v1

    .end local v1    # "applyBoundsCheck":Z
    .local p13, "applyBoundsCheck":Z
    instance-of v1, v2, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-nez v1, :cond_23

    instance-of v1, v14, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v1, :cond_24

    :cond_23
    goto :goto_e

    :cond_24
    move/from16 v23, v3

    move/from16 v21, v8

    move/from16 v1, v29

    move/from16 v8, p22

    move/from16 v29, v28

    move/from16 v28, v25

    move/from16 v25, v4

    goto/16 :goto_12

    .line 2566
    :goto_e
    const/16 v28, 0x4

    move/from16 v23, v3

    move/from16 v21, v8

    move/from16 v1, v29

    move/from16 v8, p22

    move/from16 v29, v28

    move/from16 v28, v25

    move/from16 v25, v4

    goto/16 :goto_12

    .line 2568
    .end local p13    # "applyBoundsCheck":Z
    .restart local v1    # "applyBoundsCheck":Z
    :cond_25
    move/from16 p13, v1

    .end local v1    # "applyBoundsCheck":Z
    .restart local p13    # "applyBoundsCheck":Z
    const/4 v1, 0x1

    if-ne v8, v1, :cond_26

    .line 2569
    const/4 v3, 0x1

    .line 2570
    const/4 v5, 0x1

    .line 2571
    const/16 v25, 0x8

    move/from16 v23, v3

    move/from16 v21, v8

    move/from16 v1, v29

    move/from16 v8, p22

    move/from16 v29, v28

    move/from16 v28, v25

    move/from16 v25, v4

    goto/16 :goto_12

    .line 2572
    :cond_26
    const/4 v1, 0x3

    if-ne v8, v1, :cond_32

    .line 2573
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 p24, v3

    .end local v3    # "applyCentering":Z
    .local p24, "applyCentering":Z
    const/4 v3, -0x1

    if-ne v1, v3, :cond_29

    .line 2574
    const/4 v3, 0x1

    .line 2575
    .end local p24    # "applyCentering":Z
    .restart local v3    # "applyCentering":Z
    const/4 v5, 0x1

    .line 2576
    const/4 v4, 0x1

    .line 2577
    const/16 v25, 0x8

    .line 2578
    const/16 v28, 0x5

    .line 2579
    if-eqz p19, :cond_28

    .line 2580
    const/16 v28, 0x5

    .line 2581
    const/16 v29, 0x4

    .line 2582
    if-eqz p3, :cond_27

    .line 2583
    const/16 v29, 0x5

    move/from16 v23, v3

    move/from16 v21, v8

    move/from16 v1, v29

    move/from16 v8, p22

    move/from16 v29, v28

    move/from16 v28, v25

    move/from16 v25, v4

    goto/16 :goto_12

    .line 2582
    :cond_27
    move/from16 v23, v3

    move/from16 v21, v8

    move/from16 v1, v29

    move/from16 v8, p22

    move/from16 v29, v28

    move/from16 v28, v25

    move/from16 v25, v4

    goto/16 :goto_12

    .line 2586
    :cond_28
    const/16 v29, 0x8

    move/from16 v23, v3

    move/from16 v21, v8

    move/from16 v1, v29

    move/from16 v8, p22

    move/from16 v29, v28

    move/from16 v28, v25

    move/from16 v25, v4

    goto/16 :goto_12

    .line 2589
    .end local v3    # "applyCentering":Z
    .restart local p24    # "applyCentering":Z
    :cond_29
    const/4 v3, 0x1

    .line 2590
    .end local p24    # "applyCentering":Z
    .restart local v3    # "applyCentering":Z
    const/4 v5, 0x1

    .line 2591
    const/4 v4, 0x1

    .line 2592
    if-eqz p17, :cond_2d

    .line 2595
    move/from16 v21, v8

    const/4 v1, 0x2

    move/from16 v8, p22

    .end local v8    # "matchConstraintDefault":I
    .local v21, "matchConstraintDefault":I
    if-eq v8, v1, :cond_2a

    const/4 v1, 0x1

    if-ne v8, v1, :cond_2b

    :cond_2a
    goto :goto_f

    :cond_2b
    const/16 v23, 0x0

    goto :goto_10

    :goto_f
    const/16 v23, 0x1

    :goto_10
    move/from16 v1, v23

    .line 2597
    .local v1, "otherSideInvariable":Z
    if-nez v1, :cond_2c

    .line 2598
    const/16 v25, 0x8

    .line 2599
    const/16 v28, 0x5

    .line 2601
    .end local v1    # "otherSideInvariable":Z
    :cond_2c
    move/from16 v23, v3

    move/from16 v1, v29

    move/from16 v29, v28

    move/from16 v28, v25

    move/from16 v25, v4

    goto/16 :goto_12

    .line 2602
    .end local v21    # "matchConstraintDefault":I
    .restart local v8    # "matchConstraintDefault":I
    :cond_2d
    move/from16 v21, v8

    move/from16 v8, p22

    .end local v8    # "matchConstraintDefault":I
    .restart local v21    # "matchConstraintDefault":I
    const/16 v25, 0x5

    .line 2603
    if-lez v22, :cond_2e

    .line 2604
    const/16 v28, 0x5

    move/from16 v23, v3

    move/from16 v1, v29

    move/from16 v29, v28

    move/from16 v28, v25

    move/from16 v25, v4

    goto/16 :goto_12

    .line 2605
    :cond_2e
    if-nez v22, :cond_31

    if-nez v19, :cond_31

    .line 2606
    if-nez p19, :cond_2f

    .line 2607
    const/16 v28, 0x8

    move/from16 v23, v3

    move/from16 v1, v29

    move/from16 v29, v28

    move/from16 v28, v25

    move/from16 v25, v4

    goto :goto_12

    .line 2609
    :cond_2f
    if-eq v2, v13, :cond_30

    if-eq v14, v13, :cond_30

    .line 2610
    const/4 v1, 0x4

    move/from16 v25, v1

    .end local v25    # "rangeCheckStrength":I
    .local v1, "rangeCheckStrength":I
    goto :goto_11

    .line 2612
    .end local v1    # "rangeCheckStrength":I
    .restart local v25    # "rangeCheckStrength":I
    :cond_30
    const/4 v1, 0x5

    move/from16 v25, v1

    .line 2614
    :goto_11
    const/16 v28, 0x4

    move/from16 v23, v3

    move/from16 v1, v29

    move/from16 v29, v28

    move/from16 v28, v25

    move/from16 v25, v4

    goto :goto_12

    .line 2625
    :cond_31
    move/from16 v23, v3

    move/from16 v1, v29

    move/from16 v29, v28

    move/from16 v28, v25

    move/from16 v25, v4

    goto :goto_12

    .line 2572
    .end local v21    # "matchConstraintDefault":I
    .restart local v8    # "matchConstraintDefault":I
    :cond_32
    move/from16 p24, v3

    move/from16 v21, v8

    move/from16 v8, p22

    .end local v3    # "applyCentering":Z
    .end local v8    # "matchConstraintDefault":I
    .restart local v21    # "matchConstraintDefault":I
    .restart local p24    # "applyCentering":Z
    move/from16 v23, p24

    move/from16 v1, v29

    move/from16 v29, v28

    move/from16 v28, v25

    move/from16 v25, v4

    goto :goto_12

    .line 2621
    .end local v21    # "matchConstraintDefault":I
    .end local p13    # "applyBoundsCheck":Z
    .end local p24    # "applyCentering":Z
    .local v1, "applyBoundsCheck":Z
    .restart local v3    # "applyCentering":Z
    .restart local v8    # "matchConstraintDefault":I
    :cond_33
    move/from16 p13, v1

    move/from16 p24, v3

    move/from16 v21, v8

    move/from16 v8, p22

    .end local v1    # "applyBoundsCheck":Z
    .end local v3    # "applyCentering":Z
    .end local v8    # "matchConstraintDefault":I
    .restart local v21    # "matchConstraintDefault":I
    .restart local p13    # "applyBoundsCheck":Z
    .restart local p24    # "applyCentering":Z
    const/4 v3, 0x1

    .line 2622
    .end local p24    # "applyCentering":Z
    .restart local v3    # "applyCentering":Z
    const/4 v5, 0x1

    move/from16 v23, v3

    move/from16 v1, v29

    move/from16 v29, v28

    move/from16 v28, v25

    move/from16 v25, v4

    .line 2625
    .end local v3    # "applyCentering":Z
    .end local v4    # "applyStrongChecks":Z
    .local v1, "centeringStrength":I
    .local v23, "applyCentering":Z
    .local v25, "applyStrongChecks":Z
    .local v28, "rangeCheckStrength":I
    .local v29, "boundsCheckStrength":I
    :goto_12
    if-eqz v5, :cond_34

    move-object/from16 v4, v27

    .end local v27    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v4, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    if-ne v4, v9, :cond_35

    if-eq v2, v13, :cond_35

    .line 2627
    const/4 v5, 0x0

    .line 2628
    const/4 v3, 0x0

    move/from16 v27, v3

    move/from16 v30, v5

    .end local p13    # "applyBoundsCheck":Z
    .local v3, "applyBoundsCheck":Z
    goto :goto_13

    .line 2625
    .end local v3    # "applyBoundsCheck":Z
    .end local v4    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v27    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local p13    # "applyBoundsCheck":Z
    :cond_34
    move-object/from16 v4, v27

    .line 2631
    .end local v27    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v4    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_35
    move/from16 v27, p13

    move/from16 v30, v5

    .end local v5    # "applyRangeCheck":Z
    .end local p13    # "applyBoundsCheck":Z
    .local v27, "applyBoundsCheck":Z
    .local v30, "applyRangeCheck":Z
    :goto_13
    if-eqz v23, :cond_37

    .line 2632
    iget v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v5, 0x8

    if-ne v3, v5, :cond_36

    .line 2633
    const/4 v1, 0x4

    move/from16 v31, v1

    goto :goto_14

    .line 2632
    :cond_36
    move/from16 v31, v1

    .line 2635
    .end local v1    # "centeringStrength":I
    .local v31, "centeringStrength":I
    :goto_14
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    .line 2636
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v32

    .line 2635
    move/from16 v3, v21

    .end local v21    # "matchConstraintDefault":I
    .local v3, "matchConstraintDefault":I
    move-object/from16 v1, p1

    move-object v15, v2

    .end local v2    # "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v15, "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, v7

    move/from16 v33, v3

    .end local v3    # "matchConstraintDefault":I
    .local v33, "matchConstraintDefault":I
    move-object v3, v4

    move-object v11, v4

    .end local v4    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v11, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move v4, v5

    move/from16 v5, p16

    move/from16 v34, v6

    .end local v6    # "wrapStrength":I
    .local v34, "wrapStrength":I
    move-object v6, v9

    move-object/from16 p13, v13

    move-object v13, v7

    .end local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v13, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .local p13, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v7, v12

    move/from16 v8, v32

    move-object/from16 v32, v12

    move-object v12, v9

    .end local v9    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v12, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v32, "end":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v9, v31

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    move/from16 v1, v31

    goto :goto_15

    .line 2631
    .end local v11    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v15    # "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v31    # "centeringStrength":I
    .end local v32    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v33    # "matchConstraintDefault":I
    .end local v34    # "wrapStrength":I
    .end local p13    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v1    # "centeringStrength":I
    .restart local v2    # "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v4    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v6    # "wrapStrength":I
    .restart local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v9    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v12, "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v13, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v21    # "matchConstraintDefault":I
    :cond_37
    move-object v15, v2

    move-object v11, v4

    move/from16 v34, v6

    move-object/from16 v32, v12

    move-object/from16 p13, v13

    move/from16 v33, v21

    move-object v13, v7

    move-object v12, v9

    .line 2639
    .end local v2    # "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v4    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v6    # "wrapStrength":I
    .end local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v9    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v21    # "matchConstraintDefault":I
    .restart local v11    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v12, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v13, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v15    # "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v32    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v33    # "matchConstraintDefault":I
    .restart local v34    # "wrapStrength":I
    .restart local p13    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_15
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_38

    .line 2640
    return-void

    .line 2643
    :cond_38
    if-eqz v30, :cond_3b

    .line 2644
    if-eqz p3, :cond_3a

    if-eq v11, v12, :cond_3a

    if-nez v24, :cond_3a

    .line 2646
    instance-of v2, v15, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-nez v2, :cond_39

    instance-of v2, v14, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v2, :cond_3a

    .line 2647
    :cond_39
    const/16 v28, 0x6

    move/from16 v2, v28

    goto :goto_16

    .line 2650
    :cond_3a
    move/from16 v2, v28

    .end local v28    # "rangeCheckStrength":I
    .local v2, "rangeCheckStrength":I
    :goto_16
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    invoke-virtual {v10, v13, v11, v3, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2651
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    neg-int v3, v3

    move-object/from16 v4, v32

    .end local v32    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v4, "end":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v10, v4, v12, v3, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    move/from16 v28, v2

    goto :goto_17

    .line 2643
    .end local v2    # "rangeCheckStrength":I
    .end local v4    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v28    # "rangeCheckStrength":I
    .restart local v32    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_3b
    move-object/from16 v4, v32

    .line 2654
    .end local v32    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v4    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_17
    if-eqz p3, :cond_3c

    if-eqz p20, :cond_3c

    instance-of v2, v15, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-nez v2, :cond_3c

    instance-of v2, v14, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-nez v2, :cond_3c

    .line 2658
    const/16 v29, 0x6

    .line 2659
    const/16 v28, 0x6

    .line 2660
    const/16 v27, 0x1

    move/from16 v2, v28

    move/from16 v3, v29

    goto :goto_18

    .line 2663
    :cond_3c
    move/from16 v2, v28

    move/from16 v3, v29

    .end local v28    # "rangeCheckStrength":I
    .end local v29    # "boundsCheckStrength":I
    .restart local v2    # "rangeCheckStrength":I
    .local v3, "boundsCheckStrength":I
    :goto_18
    if-eqz v27, :cond_49

    .line 2664
    if-eqz v25, :cond_46

    if-eqz p19, :cond_3d

    if-eqz p4, :cond_3e

    :cond_3d
    goto :goto_19

    :cond_3e
    move-object/from16 v6, p13

    goto :goto_1a

    .line 2665
    :goto_19
    move v5, v3

    .line 2666
    .local v5, "strength":I
    move-object/from16 v6, p13

    .end local p13    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v6, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eq v15, v6, :cond_3f

    if-ne v14, v6, :cond_40

    .line 2667
    :cond_3f
    const/4 v5, 0x6

    .line 2669
    :cond_40
    instance-of v7, v15, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v7, :cond_41

    instance-of v7, v14, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v7, :cond_42

    .line 2670
    :cond_41
    const/4 v5, 0x5

    .line 2672
    :cond_42
    instance-of v7, v15, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-nez v7, :cond_43

    instance-of v7, v14, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v7, :cond_44

    .line 2673
    :cond_43
    const/4 v5, 0x5

    .line 2675
    :cond_44
    if-eqz p19, :cond_45

    .line 2676
    const/4 v5, 0x5

    .line 2678
    :cond_45
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1a

    .line 2664
    .end local v5    # "strength":I
    .end local v6    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local p13    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_46
    move-object/from16 v6, p13

    .line 2681
    .end local p13    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v6    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_1a
    if-eqz p3, :cond_48

    .line 2682
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2683
    if-eqz p17, :cond_48

    if-nez p19, :cond_48

    if-eq v15, v6, :cond_47

    if-ne v14, v6, :cond_48

    .line 2686
    :cond_47
    const/4 v3, 0x4

    .line 2689
    :cond_48
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    invoke-virtual {v10, v13, v11, v5, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2690
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v10, v4, v12, v5, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_1b

    .line 2663
    .end local v6    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local p13    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_49
    move-object/from16 v6, p13

    .line 2693
    .end local p13    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v6    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_1b
    if-eqz p3, :cond_4c

    .line 2694
    const/4 v5, 0x0

    .line 2695
    .local v5, "margin":I
    move-object/from16 v7, p6

    move-object v8, v11

    .end local v11    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v8, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    if-ne v7, v8, :cond_4a

    .line 2696
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    .line 2698
    :cond_4a
    if-eq v8, v7, :cond_4b

    .line 2699
    move/from16 v9, v34

    .end local v34    # "wrapStrength":I
    .local v9, "wrapStrength":I
    invoke-virtual {v10, v13, v7, v5, v9}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_1c

    .line 2698
    .end local v9    # "wrapStrength":I
    .restart local v34    # "wrapStrength":I
    :cond_4b
    move/from16 v9, v34

    .end local v34    # "wrapStrength":I
    .restart local v9    # "wrapStrength":I
    goto :goto_1c

    .line 2693
    .end local v5    # "margin":I
    .end local v8    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v9    # "wrapStrength":I
    .restart local v11    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v34    # "wrapStrength":I
    :cond_4c
    move-object/from16 v7, p6

    move-object v8, v11

    move/from16 v9, v34

    .line 2703
    .end local v11    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v34    # "wrapStrength":I
    .restart local v8    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v9    # "wrapStrength":I
    :goto_1c
    if-eqz p3, :cond_50

    if-eqz v24, :cond_50

    move-object v5, v15

    .end local v15    # "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v5, "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez p14, :cond_4f

    if-nez v19, :cond_4f

    .line 2704
    if-eqz v24, :cond_4e

    move/from16 v11, v33

    const/4 v15, 0x3

    .end local v33    # "matchConstraintDefault":I
    .local v11, "matchConstraintDefault":I
    if-ne v11, v15, :cond_4d

    .line 2705
    move/from16 p13, v1

    const/4 v1, 0x0

    const/16 v15, 0x8

    .end local v1    # "centeringStrength":I
    .local p13, "centeringStrength":I
    invoke-virtual {v10, v4, v13, v1, v15}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_1e

    .line 2704
    .end local p13    # "centeringStrength":I
    .restart local v1    # "centeringStrength":I
    :cond_4d
    move/from16 p13, v1

    const/4 v1, 0x0

    .end local v1    # "centeringStrength":I
    .restart local p13    # "centeringStrength":I
    goto :goto_1d

    .end local v11    # "matchConstraintDefault":I
    .end local p13    # "centeringStrength":I
    .restart local v1    # "centeringStrength":I
    .restart local v33    # "matchConstraintDefault":I
    :cond_4e
    move/from16 p13, v1

    move/from16 v11, v33

    const/4 v1, 0x0

    .line 2707
    .end local v1    # "centeringStrength":I
    .end local v33    # "matchConstraintDefault":I
    .restart local v11    # "matchConstraintDefault":I
    .restart local p13    # "centeringStrength":I
    :goto_1d
    invoke-virtual {v10, v4, v13, v1, v9}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_1e

    .line 2703
    .end local v11    # "matchConstraintDefault":I
    .end local p13    # "centeringStrength":I
    .restart local v1    # "centeringStrength":I
    .restart local v33    # "matchConstraintDefault":I
    :cond_4f
    move/from16 p13, v1

    move/from16 v11, v33

    .end local v1    # "centeringStrength":I
    .end local v33    # "matchConstraintDefault":I
    .restart local v11    # "matchConstraintDefault":I
    .restart local p13    # "centeringStrength":I
    goto :goto_1e

    .end local v5    # "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v11    # "matchConstraintDefault":I
    .end local p13    # "centeringStrength":I
    .restart local v1    # "centeringStrength":I
    .restart local v15    # "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v33    # "matchConstraintDefault":I
    :cond_50
    move/from16 p13, v1

    move-object v5, v15

    move/from16 v11, v33

    .end local v1    # "centeringStrength":I
    .end local v15    # "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v33    # "matchConstraintDefault":I
    .restart local v5    # "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v11    # "matchConstraintDefault":I
    .restart local p13    # "centeringStrength":I
    goto :goto_1e

    .line 2537
    .end local v2    # "rangeCheckStrength":I
    .end local v3    # "boundsCheckStrength":I
    .end local v4    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v5    # "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v11    # "matchConstraintDefault":I
    .end local v13    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v23    # "applyCentering":Z
    .end local v25    # "applyStrongChecks":Z
    .end local v30    # "applyRangeCheck":Z
    .end local p5    # "isTerminal":Z
    .end local p13    # "centeringStrength":I
    .local v6, "wrapStrength":I
    .restart local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v8, "matchConstraintDefault":I
    .local v9, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v12, "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v14, "isTerminal":Z
    .local v27, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_51
    move-object v13, v7

    move-object v7, v11

    move-object v4, v12

    move/from16 p5, v14

    move v11, v8

    move-object v12, v9

    move-object/from16 v8, v27

    move v9, v6

    .line 2712
    .end local v6    # "wrapStrength":I
    .end local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v14    # "isTerminal":Z
    .end local v27    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v4    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v8, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v9, "wrapStrength":I
    .restart local v11    # "matchConstraintDefault":I
    .local v12, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v13    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local p5    # "isTerminal":Z
    :goto_1e
    if-eqz p3, :cond_53

    if-eqz p5, :cond_53

    .line 2713
    const/4 v1, 0x0

    .line 2714
    .local v1, "margin":I
    move-object/from16 v2, p11

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_52

    .line 2715
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 2717
    :cond_52
    move-object/from16 v3, p7

    move/from16 v5, v20

    .end local v20    # "numConnections":I
    .local v5, "numConnections":I
    if-eq v12, v3, :cond_54

    .line 2718
    invoke-virtual {v10, v3, v4, v1, v9}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_1f

    .line 2712
    .end local v1    # "margin":I
    .end local v5    # "numConnections":I
    .restart local v20    # "numConnections":I
    :cond_53
    move-object/from16 v3, p7

    move-object/from16 v2, p11

    move/from16 v5, v20

    .line 2721
    .end local v20    # "numConnections":I
    .restart local v5    # "numConnections":I
    :cond_54
    :goto_1f
    return-void

    .line 2496
    .end local v4    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v5    # "numConnections":I
    .end local v11    # "matchConstraintDefault":I
    .end local v13    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local p5    # "isTerminal":Z
    .restart local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v8, "matchConstraintDefault":I
    .local v9, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v12, "end":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v14    # "isTerminal":Z
    .restart local v20    # "numConnections":I
    .restart local v27    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_55
    move-object/from16 v3, p7

    move-object/from16 v2, p11

    move-object v13, v7

    move-object v7, v11

    move-object v4, v12

    move/from16 p5, v14

    move/from16 v5, v20

    move v11, v8

    move-object v12, v9

    move-object/from16 v8, v27

    .line 2502
    .end local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v9    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v14    # "isTerminal":Z
    .end local v20    # "numConnections":I
    .end local v27    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v4    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v5    # "numConnections":I
    .local v8, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v11    # "matchConstraintDefault":I
    .local v12, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v13    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local p5    # "isTerminal":Z
    :goto_20
    const/4 v1, 0x2

    if-ge v5, v1, :cond_5a

    if-eqz p3, :cond_5a

    if-eqz p5, :cond_5a

    .line 2503
    const/16 v1, 0x8

    const/4 v6, 0x0

    invoke-virtual {v10, v13, v7, v6, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2504
    if-nez p2, :cond_56

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_57

    :cond_56
    goto :goto_21

    :cond_57
    const/4 v1, 0x0

    goto :goto_22

    :goto_21
    const/4 v1, 0x1

    .line 2505
    .local v1, "applyEnd":Z
    :goto_22
    if-nez p2, :cond_59

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_59

    .line 2508
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2509
    .local v6, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v9, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v14, 0x0

    cmpl-float v9, v9, v14

    if-eqz v9, :cond_58

    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v14, 0x0

    aget-object v9, v9, v14

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v14, :cond_58

    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v14, 0x1

    aget-object v9, v9, v14

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v14, :cond_58

    .line 2512
    const/4 v1, 0x1

    goto :goto_23

    .line 2514
    :cond_58
    const/4 v1, 0x0

    .line 2517
    .end local v6    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_59
    :goto_23
    if-eqz v1, :cond_5a

    .line 2518
    const/16 v6, 0x8

    const/4 v9, 0x0

    invoke-virtual {v10, v3, v4, v9, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2521
    .end local v1    # "applyEnd":Z
    :cond_5a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isChainHead(I)Z
    .locals 4
    .param p1, "orientation"    # I

    .line 1962
    mul-int/lit8 v0, p1, 0x2

    .line 1963
    .local v0, "offset":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method addFirst()Z
    .locals 1

    .line 2253
    instance-of v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 62
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 1986
    move-object/from16 v13, p0

    move-object/from16 v9, p1

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    .line 1987
    .local v4, "left":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    .line 1988
    .local v3, "right":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 1989
    .local v1, "top":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 1990
    .local v0, "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    .line 1992
    .local v2, "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    sget-boolean v5, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 1995
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    const/16 v15, 0x8

    const/4 v14, 0x1

    const/4 v12, 0x0

    if-eqz v5, :cond_4

    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v5, :cond_4

    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v5, :cond_4

    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v5, :cond_4

    .line 1998
    sget-boolean v5, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 2001
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v9, v4, v5}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2002
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v9, v3, v5}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2003
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v9, v1, v5}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2004
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v9, v0, v5}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2005
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v9, v2, v5}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2006
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_3

    .line 2007
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_0

    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v12

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_0

    move v5, v14

    goto :goto_0

    :cond_0
    move v5, v12

    .line 2008
    .local v5, "horizontalParentWrapContent":Z
    :goto_0
    iget-object v6, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v6, :cond_1

    iget-object v6, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v14

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_1

    move v6, v14

    goto :goto_1

    :cond_1
    move v6, v12

    .line 2009
    .local v6, "verticalParentWrapContent":Z
    :goto_1
    if-eqz v5, :cond_2

    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v7, v7, v12

    if-eqz v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2010
    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    .line 2011
    .local v7, "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v9, v7, v3, v12, v15}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2013
    .end local v7    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_2
    if-eqz v6, :cond_3

    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v7, v7, v14

    if-eqz v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2014
    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    .line 2015
    .restart local v7    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v9, v7, v0, v12, v15}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2018
    .end local v5    # "horizontalParentWrapContent":Z
    .end local v6    # "verticalParentWrapContent":Z
    .end local v7    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_3
    return-void

    .line 2020
    :cond_4
    sget-boolean v5, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 2024
    const/4 v5, 0x0

    .line 2025
    .local v5, "inHorizontalChain":Z
    const/4 v6, 0x0

    .line 2026
    .local v6, "inVerticalChain":Z
    const/4 v7, 0x0

    .line 2027
    .local v7, "horizontalParentWrapContent":Z
    const/4 v8, 0x0

    .line 2029
    .local v8, "verticalParentWrapContent":Z
    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v10, :cond_b

    .line 2030
    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v10, :cond_5

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v12

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_5

    move v10, v14

    goto :goto_2

    :cond_5
    move v10, v12

    :goto_2
    move v7, v10

    .line 2031
    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v10, :cond_6

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v14

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_6

    move v10, v14

    goto :goto_3

    :cond_6
    move v10, v12

    :goto_3
    move v8, v10

    .line 2034
    invoke-direct {v13, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2035
    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v10, v13, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 2036
    const/4 v5, 0x1

    goto :goto_4

    .line 2038
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v5

    .line 2042
    :goto_4
    invoke-direct {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2043
    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v10, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 2044
    const/4 v6, 0x1

    goto :goto_5

    .line 2046
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v6

    .line 2049
    :goto_5
    if-nez v5, :cond_9

    if-eqz v7, :cond_9

    iget v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    if-eq v10, v15, :cond_9

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_9

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_9

    .line 2051
    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v10

    .line 2052
    .local v10, "parentRight":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v9, v10, v3, v12, v14}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2055
    .end local v10    # "parentRight":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_9
    if-nez v6, :cond_a

    if-eqz v8, :cond_a

    iget v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    if-eq v10, v15, :cond_a

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_a

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_a

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_a

    .line 2057
    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v10

    .line 2058
    .local v10, "parentBottom":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v9, v10, v0, v12, v14}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2062
    .end local v10    # "parentBottom":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_a
    move/from16 v45, v5

    move/from16 v46, v6

    move v11, v7

    move v10, v8

    goto :goto_6

    .line 2029
    :cond_b
    move/from16 v45, v5

    move/from16 v46, v6

    move v11, v7

    move v10, v8

    .line 2062
    .end local v5    # "inHorizontalChain":Z
    .end local v6    # "inVerticalChain":Z
    .end local v7    # "horizontalParentWrapContent":Z
    .end local v8    # "verticalParentWrapContent":Z
    .local v10, "verticalParentWrapContent":Z
    .local v11, "horizontalParentWrapContent":Z
    .local v45, "inHorizontalChain":Z
    .local v46, "inVerticalChain":Z
    :goto_6
    iget v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 2063
    .local v5, "width":I
    iget v6, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v5, v6, :cond_c

    .line 2064
    iget v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 2066
    :cond_c
    iget v6, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 2067
    .local v6, "height":I
    iget v7, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v6, v7, :cond_d

    .line 2068
    iget v6, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 2072
    :cond_d
    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v7, v12

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v7, v8, :cond_e

    move v7, v14

    goto :goto_7

    :cond_e
    move v7, v12

    :goto_7
    move v8, v7

    .line 2074
    .local v8, "horizontalDimensionFixed":Z
    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v7, v14

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v7, v14, :cond_f

    const/4 v7, 0x1

    goto :goto_8

    :cond_f
    move v7, v12

    :goto_8
    move v14, v7

    .line 2079
    .local v14, "verticalDimensionFixed":Z
    const/4 v7, 0x0

    .line 2080
    .local v7, "useRatio":Z
    iget v12, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    iput v12, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2081
    iget v12, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    iput v12, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2083
    iget v12, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 2084
    .local v12, "matchConstraintDefaultWidth":I
    iget v15, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 2086
    .local v15, "matchConstraintDefaultHeight":I
    move-object/from16 v20, v0

    .end local v0    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .local v20, "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/16 v17, 0x0

    cmpl-float v0, v0, v17

    move-object/from16 v21, v2

    .end local v2    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .local v21, "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    if-lez v0, :cond_18

    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_18

    .line 2087
    const/4 v7, 0x1

    .line 2088
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_10

    if-nez v12, :cond_10

    .line 2090
    const/4 v12, 0x3

    .line 2092
    :cond_10
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_11

    if-nez v15, :cond_11

    .line 2094
    const/4 v15, 0x3

    .line 2097
    :cond_11
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v26, v1

    .end local v1    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .local v26, "top":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v1, 0x3

    if-ne v0, v2, :cond_12

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_12

    if-ne v12, v1, :cond_12

    if-ne v15, v1, :cond_12

    .line 2101
    invoke-virtual {v13, v11, v10, v8, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setupDimensionRatio(ZZZZ)V

    goto/16 :goto_9

    .line 2102
    :cond_12
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_14

    if-ne v12, v1, :cond_14

    .line 2104
    const/4 v0, 0x0

    iput v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2105
    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 2106
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v1, :cond_13

    .line 2107
    const/4 v12, 0x4

    .line 2108
    const/4 v7, 0x0

    move/from16 v27, v6

    move v1, v7

    move/from16 v47, v12

    move/from16 v48, v15

    goto :goto_a

    .line 2106
    :cond_13
    move/from16 v27, v6

    move v1, v7

    move/from16 v47, v12

    move/from16 v48, v15

    goto :goto_a

    .line 2110
    :cond_14
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_17

    if-ne v15, v1, :cond_17

    .line 2112
    const/4 v0, 0x1

    iput v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2113
    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 2115
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v0, v1

    iput v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2117
    :cond_15
    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 2118
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v1, :cond_16

    .line 2119
    const/4 v15, 0x4

    .line 2120
    const/4 v7, 0x0

    move/from16 v27, v6

    move v1, v7

    move/from16 v47, v12

    move/from16 v48, v15

    goto :goto_a

    .line 2118
    :cond_16
    move/from16 v27, v6

    move v1, v7

    move/from16 v47, v12

    move/from16 v48, v15

    goto :goto_a

    .line 2125
    :cond_17
    :goto_9
    move/from16 v27, v6

    move v1, v7

    move/from16 v47, v12

    move/from16 v48, v15

    goto :goto_a

    .line 2086
    .end local v26    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v1    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_18
    move-object/from16 v26, v1

    .end local v1    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v26    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    goto :goto_9

    .line 2125
    .end local v6    # "height":I
    .end local v7    # "useRatio":Z
    .end local v12    # "matchConstraintDefaultWidth":I
    .end local v15    # "matchConstraintDefaultHeight":I
    .local v1, "useRatio":Z
    .local v27, "height":I
    .local v47, "matchConstraintDefaultWidth":I
    .local v48, "matchConstraintDefaultHeight":I
    :goto_a
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v2, 0x0

    aput v47, v0, v2

    .line 2126
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v2, 0x1

    aput v48, v0, v2

    .line 2127
    iput-boolean v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 2129
    if-eqz v1, :cond_1a

    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-eqz v0, :cond_19

    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1b

    goto :goto_b

    :cond_19
    const/4 v2, -0x1

    :goto_b
    const/16 v17, 0x1

    goto :goto_c

    :cond_1a
    const/4 v2, -0x1

    :cond_1b
    const/16 v17, 0x0

    .line 2133
    .local v17, "useHorizontalRatio":Z
    :goto_c
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    aget-object v0, v0, v6

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v6, :cond_1c

    instance-of v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_d

    :cond_1c
    const/4 v0, 0x0

    :goto_d
    move/from16 v28, v0

    .line 2135
    .local v28, "wrapContent":Z
    if-eqz v28, :cond_1d

    .line 2136
    const/4 v5, 0x0

    move/from16 v49, v5

    goto :goto_e

    .line 2135
    :cond_1d
    move/from16 v49, v5

    .line 2139
    .end local v5    # "width":I
    .local v49, "width":I
    :goto_e
    const/4 v0, 0x1

    .line 2140
    .local v0, "applyPosition":Z
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2141
    const/4 v0, 0x0

    move/from16 v29, v0

    goto :goto_f

    .line 2140
    :cond_1e
    move/from16 v29, v0

    .line 2144
    .end local v0    # "applyPosition":Z
    .local v29, "applyPosition":Z
    :goto_f
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    const/4 v5, 0x0

    aget-boolean v50, v0, v5

    .line 2145
    .local v50, "isInHorizontalBarrier":Z
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    const/4 v15, 0x1

    aget-boolean v51, v0, v15

    .line 2147
    .local v51, "isInVerticalBarrier":Z
    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    const/4 v12, 0x2

    const/16 v30, 0x0

    if-eq v0, v12, :cond_25

    .line 2148
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_22

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v0, :cond_1f

    const/16 v6, 0x8

    goto/16 :goto_10

    .line 2156
    :cond_1f
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v9, v4, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2157
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v9, v3, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2158
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_21

    .line 2159
    if-eqz v11, :cond_20

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/4 v5, 0x0

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2160
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 2161
    .local v0, "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    const/16 v6, 0x8

    invoke-virtual {v9, v0, v3, v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    move/from16 v59, v1

    move-object/from16 v60, v3

    move-object/from16 v61, v4

    move/from16 v52, v8

    move/from16 v53, v10

    move/from16 v54, v11

    move/from16 v55, v14

    move-object/from16 v57, v20

    move-object/from16 v56, v21

    move-object/from16 v58, v26

    goto/16 :goto_13

    .line 2159
    .end local v0    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_20
    const/16 v6, 0x8

    move/from16 v59, v1

    move-object/from16 v60, v3

    move-object/from16 v61, v4

    move/from16 v52, v8

    move/from16 v53, v10

    move/from16 v54, v11

    move/from16 v55, v14

    move-object/from16 v57, v20

    move-object/from16 v56, v21

    move-object/from16 v58, v26

    goto/16 :goto_13

    .line 2158
    :cond_21
    const/16 v6, 0x8

    move/from16 v59, v1

    move-object/from16 v60, v3

    move-object/from16 v61, v4

    move/from16 v52, v8

    move/from16 v53, v10

    move/from16 v54, v11

    move/from16 v55, v14

    move-object/from16 v57, v20

    move-object/from16 v56, v21

    move-object/from16 v58, v26

    goto/16 :goto_13

    .line 2148
    :cond_22
    const/16 v6, 0x8

    .line 2149
    :goto_10
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_23

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    move-object v7, v0

    goto :goto_11

    :cond_23
    move-object/from16 v7, v30

    .line 2150
    .local v7, "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_11
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_24

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    goto :goto_12

    :cond_24
    move-object/from16 v0, v30

    :goto_12
    move/from16 v16, v6

    move-object v6, v0

    .line 2151
    .local v6, "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/16 v18, 0x0

    aget-boolean v5, v0, v18

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v18

    move/from16 v52, v8

    .end local v8    # "horizontalDimensionFixed":Z
    .local v52, "horizontalDimensionFixed":Z
    move-object v8, v0

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move/from16 v53, v10

    .end local v10    # "verticalParentWrapContent":Z
    .local v53, "verticalParentWrapContent":Z
    move-object v10, v0

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move/from16 v54, v11

    .end local v11    # "horizontalParentWrapContent":Z
    .local v54, "horizontalParentWrapContent":Z
    move-object v11, v0

    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move/from16 v2, v18

    move v12, v0

    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    move/from16 v55, v14

    .end local v14    # "verticalDimensionFixed":Z
    .local v55, "verticalDimensionFixed":Z
    move v14, v0

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v0, v0, v2

    move v15, v0

    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move/from16 v16, v0

    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v23, v0

    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v24, v0

    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    move/from16 v25, v0

    const/4 v0, 0x1

    move-object/from16 v56, v21

    .end local v21    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .local v56, "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    move v2, v0

    move-object/from16 v57, v20

    .end local v20    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .local v57, "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v0, p0

    move/from16 v59, v1

    move-object/from16 v58, v26

    .end local v1    # "useRatio":Z
    .end local v26    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .local v58, "top":Landroidx/constraintlayout/solver/SolverVariable;
    .local v59, "useRatio":Z
    move-object/from16 v1, p1

    move-object/from16 v60, v3

    .end local v3    # "right":Landroidx/constraintlayout/solver/SolverVariable;
    .local v60, "right":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v3, v54

    move-object/from16 v61, v4

    .end local v4    # "left":Landroidx/constraintlayout/solver/SolverVariable;
    .local v61, "left":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v4, v53

    move/from16 v9, v28

    move/from16 v13, v49

    move/from16 v18, v45

    move/from16 v19, v46

    move/from16 v20, v50

    move/from16 v21, v47

    move/from16 v22, v48

    move/from16 v26, v29

    invoke-direct/range {v0 .. v26}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZZIIIIFZ)V

    .line 2155
    .end local v6    # "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v7    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    goto :goto_13

    .line 2147
    .end local v52    # "horizontalDimensionFixed":Z
    .end local v53    # "verticalParentWrapContent":Z
    .end local v54    # "horizontalParentWrapContent":Z
    .end local v55    # "verticalDimensionFixed":Z
    .end local v56    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v57    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v58    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v59    # "useRatio":Z
    .end local v60    # "right":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v61    # "left":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v1    # "useRatio":Z
    .restart local v3    # "right":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v4    # "left":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v8    # "horizontalDimensionFixed":Z
    .restart local v10    # "verticalParentWrapContent":Z
    .restart local v11    # "horizontalParentWrapContent":Z
    .restart local v14    # "verticalDimensionFixed":Z
    .restart local v20    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v21    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v26    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_25
    move/from16 v59, v1

    move-object/from16 v60, v3

    move-object/from16 v61, v4

    move/from16 v52, v8

    move/from16 v53, v10

    move/from16 v54, v11

    move/from16 v55, v14

    move-object/from16 v57, v20

    move-object/from16 v56, v21

    move-object/from16 v58, v26

    .line 2167
    .end local v1    # "useRatio":Z
    .end local v3    # "right":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v4    # "left":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v8    # "horizontalDimensionFixed":Z
    .end local v10    # "verticalParentWrapContent":Z
    .end local v11    # "horizontalParentWrapContent":Z
    .end local v14    # "verticalDimensionFixed":Z
    .end local v20    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v21    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v26    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v52    # "horizontalDimensionFixed":Z
    .restart local v53    # "verticalParentWrapContent":Z
    .restart local v54    # "horizontalParentWrapContent":Z
    .restart local v55    # "verticalDimensionFixed":Z
    .restart local v56    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v57    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v58    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v59    # "useRatio":Z
    .restart local v60    # "right":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v61    # "left":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_13
    const/4 v0, 0x1

    .line 2168
    .local v0, "applyVerticalConstraints":Z
    move-object/from16 v7, p0

    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v1, :cond_29

    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v1, :cond_29

    .line 2169
    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move-object/from16 v8, p1

    move-object/from16 v9, v58

    .end local v58    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .local v9, "top":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v8, v9, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2170
    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move-object/from16 v10, v57

    .end local v57    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .local v10, "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v8, v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2171
    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move-object/from16 v11, v56

    .end local v56    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .local v11, "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v8, v11, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2172
    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_28

    .line 2173
    if-nez v46, :cond_27

    if-eqz v53, :cond_27

    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_26

    .line 2174
    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 2175
    .local v1, "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v8, v1, v10, v4, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_15

    .line 2173
    .end local v1    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_26
    :goto_14
    const/16 v3, 0x8

    const/4 v4, 0x0

    goto :goto_15

    :cond_27
    const/4 v2, 0x1

    goto :goto_14

    .line 2172
    :cond_28
    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 2178
    :goto_15
    const/4 v0, 0x0

    goto :goto_16

    .line 2168
    .end local v9    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v10    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v11    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v56    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v57    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v58    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_29
    move-object/from16 v8, p1

    move-object/from16 v11, v56

    move-object/from16 v10, v57

    move-object/from16 v9, v58

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 2180
    .end local v56    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v57    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v58    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v9    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v10    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v11    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_16
    iget v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2a

    .line 2187
    const/4 v0, 0x0

    move v12, v0

    goto :goto_17

    .line 2180
    :cond_2a
    move v12, v0

    .line 2189
    .end local v0    # "applyVerticalConstraints":Z
    .local v12, "applyVerticalConstraints":Z
    :goto_17
    if-eqz v12, :cond_35

    .line 2191
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v2

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_2b

    instance-of v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_2b

    move v14, v2

    goto :goto_18

    :cond_2b
    move v14, v4

    :goto_18
    move v0, v14

    .line 2193
    .end local v28    # "wrapContent":Z
    .local v0, "wrapContent":Z
    if-eqz v0, :cond_2c

    .line 2194
    const/16 v27, 0x0

    move/from16 v1, v27

    goto :goto_19

    .line 2193
    :cond_2c
    move/from16 v1, v27

    .line 2197
    .end local v27    # "height":I
    .local v1, "height":I
    :goto_19
    if-eqz v59, :cond_2e

    iget v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-eq v5, v2, :cond_2d

    iget v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2e

    :cond_2d
    move/from16 v35, v2

    goto :goto_1a

    :cond_2e
    move/from16 v35, v4

    .line 2200
    .local v35, "useVerticalRatio":Z
    :goto_1a
    iget-object v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_2f

    iget-object v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v5}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    goto :goto_1b

    :cond_2f
    move-object/from16 v5, v30

    .line 2201
    .local v5, "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_1b
    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v6, :cond_30

    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    move-object/from16 v24, v6

    goto :goto_1c

    :cond_30
    move-object/from16 v24, v30

    .line 2203
    .local v24, "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_1c
    iget v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v6, :cond_31

    iget v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    if-ne v6, v3, :cond_34

    .line 2205
    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v6

    invoke-virtual {v8, v11, v9, v6, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2206
    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_33

    .line 2207
    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    .line 2208
    .local v6, "baselineTarget":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v13, 0x0

    .line 2209
    .local v13, "baselineMargin":I
    invoke-virtual {v8, v11, v6, v13, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2210
    const/16 v29, 0x0

    .line 2211
    if-eqz v53, :cond_32

    .line 2212
    iget-object v3, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v3}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    .line 2213
    .local v3, "end":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v14, 0x5

    .line 2214
    .local v14, "wrapStrength":I
    invoke-virtual {v8, v5, v3, v4, v14}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2216
    .end local v3    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v6    # "baselineTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v13    # "baselineMargin":I
    .end local v14    # "wrapStrength":I
    :cond_32
    move/from16 v3, v29

    goto :goto_1d

    :cond_33
    iget v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    if-ne v6, v3, :cond_34

    .line 2218
    invoke-virtual {v8, v11, v9, v4, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2222
    :cond_34
    move/from16 v3, v29

    .end local v29    # "applyPosition":Z
    .local v3, "applyPosition":Z
    :goto_1d
    iget-object v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v23, v4, v2

    iget-object v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v26, v4, v2

    iget-object v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v4

    iget-object v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v4

    iget v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move/from16 v30, v4

    iget v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v32, v4

    iget-object v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v33, v4, v2

    iget v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v34, v4

    iget v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v41, v4

    iget v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v42, v4

    iget v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    move/from16 v43, v4

    const/16 v20, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move/from16 v21, v53

    move/from16 v22, v54

    move-object/from16 v25, v5

    move/from16 v27, v0

    move/from16 v31, v1

    move/from16 v36, v46

    move/from16 v37, v45

    move/from16 v38, v51

    move/from16 v39, v48

    move/from16 v40, v47

    move/from16 v44, v3

    invoke-direct/range {v18 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZZIIIIFZ)V

    move/from16 v28, v0

    move/from16 v27, v1

    move/from16 v29, v3

    .line 2228
    .end local v0    # "wrapContent":Z
    .end local v1    # "height":I
    .end local v3    # "applyPosition":Z
    .end local v5    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v24    # "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v35    # "useVerticalRatio":Z
    .restart local v27    # "height":I
    .restart local v28    # "wrapContent":Z
    .restart local v29    # "applyPosition":Z
    :cond_35
    if-eqz v59, :cond_37

    .line 2229
    const/16 v13, 0x8

    .line 2230
    .local v13, "strength":I
    iget v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v2, :cond_36

    .line 2231
    iget v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v0, p1

    move-object v1, v10

    move-object v2, v9

    move-object/from16 v3, v60

    move-object/from16 v4, v61

    move v6, v13

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/LinearSystem;->addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V

    goto :goto_1e

    .line 2233
    :cond_36
    iget v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    move-object v3, v10

    move-object v4, v9

    move v6, v13

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/LinearSystem;->addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V

    .line 2237
    .end local v13    # "strength":I
    :cond_37
    :goto_1e
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2238
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    iget v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    invoke-virtual {v8, v7, v0, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addCenterPoint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V

    .line 2246
    :cond_38
    return-void
.end method

.method public allowedInBarrier()Z
    .locals 2

    .line 1423
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public connectCircularConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V
    .locals 6
    .param p1, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "angle"    # F
    .param p3, "radius"    # I

    .line 496
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 498
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 499
    return-void
.end method

.method public createObjectVariables(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 5
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 592
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 593
    .local v0, "left":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 594
    .local v1, "top":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    .line 595
    .local v2, "right":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    .line 596
    .local v3, "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v4, :cond_0

    .line 597
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 599
    :cond_0
    return-void
.end method

.method public getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 2
    .param p1, "anchorType"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1749
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1777
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1775
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 1769
    :pswitch_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1766
    :pswitch_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1772
    :pswitch_3
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1763
    :pswitch_4
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1760
    :pswitch_5
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1757
    :pswitch_6
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1754
    :pswitch_7
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1751
    :pswitch_8
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBaselineDistance()I
    .locals 1

    .line 877
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    return v0
.end method

.method public getBiasPercent(I)F
    .locals 1
    .param p1, "orientation"    # I

    .line 853
    if-nez p1, :cond_0

    .line 854
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    return v0

    .line 855
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 856
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    return v0

    .line 858
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getBottom()I
    .locals 2

    .line 794
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCompanionWidget()Ljava/lang/Object;
    .locals 1

    .line 887
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    return-object v0
.end method

.method public getDebugName()Ljava/lang/String;
    .locals 1

    .line 543
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    return-object v0
.end method

.method public getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1
    .param p1, "orientation"    # I

    .line 1805
    if-nez p1, :cond_0

    .line 1806
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    return-object v0

    .line 1807
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1808
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    return-object v0

    .line 1810
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDimensionRatio()F
    .locals 1

    .line 1124
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    return v0
.end method

.method public getDimensionRatioSide()I
    .locals 1

    .line 1133
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    return v0
.end method

.method public getHeight()I
    .locals 2

    .line 701
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 702
    const/4 v0, 0x0

    return v0

    .line 704
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    return v0
.end method

.method public getHorizontalBiasPercent()F
    .locals 1

    .line 832
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    return v0
.end method

.method public getHorizontalChainStyle()I
    .locals 1

    .line 1396
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    return v0
.end method

.method public getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 1786
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getHorizontalMargin()I
    .locals 2

    .line 801
    const/4 v0, 0x0

    .line 802
    .local v0, "margin":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    .line 805
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_1

    .line 806
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    .line 808
    :cond_1
    return v0
.end method

.method public getLength(I)I
    .locals 1
    .param p1, "orientation"    # I

    .line 714
    if-nez p1, :cond_0

    .line 715
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    return v0

    .line 716
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 717
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    return v0

    .line 719
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    .line 139
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    .line 143
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 758
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 749
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    return v0
.end method

.method public getNextChainMember(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2
    .param p1, "orientation"    # I

    .line 1871
    if-nez p1, :cond_0

    .line 1872
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_1

    .line 1873
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0

    .line 1875
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1876
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_1

    .line 1877
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0

    .line 1880
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 1

    .line 440
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getPreviousChainMember(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2
    .param p1, "orientation"    # I

    .line 1852
    if-nez p1, :cond_0

    .line 1853
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_1

    .line 1854
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0

    .line 1856
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1857
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_1

    .line 1858
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0

    .line 1861
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRight()I
    .locals 2

    .line 785
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRun(I)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    .locals 1
    .param p1, "orientation"    # I

    .line 72
    if-nez p1, :cond_0

    .line 73
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    return-object v0

    .line 74
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 75
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    return-object v0

    .line 77
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVerticalBiasPercent()F
    .locals 1

    .line 842
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    return v0
.end method

.method public getVerticalChainStyle()I
    .locals 1

    .line 1416
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    return v0
.end method

.method public getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 1795
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getVerticalMargin()I
    .locals 2

    .line 815
    const/4 v0, 0x0

    .line 816
    .local v0, "margin":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    .line 819
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_1

    .line 820
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    .line 822
    :cond_1
    return v0
.end method

.method public getVisibility()I
    .locals 1

    .line 534
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 653
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 654
    const/4 v0, 0x0

    return v0

    .line 656
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    return v0
.end method

.method public getX()I
    .locals 2

    .line 629
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    add-int/2addr v0, v1

    return v0

    .line 632
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    return v0
.end method

.method public getY()I
    .locals 2

    .line 641
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    add-int/2addr v0, v1

    return v0

    .line 644
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    return v0
.end method

.method public hasBaseline()Z
    .locals 1

    .line 868
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    return v0
.end method

.method public immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V
    .locals 3
    .param p1, "startType"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "endType"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p4, "margin"    # I
    .param p5, "goneMargin"    # I

    .line 1441
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1442
    .local v0, "startAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1443
    .local v1, "endAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p4, p5, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 1444
    return-void
.end method

.method public isInHorizontalChain()Z
    .locals 2

    .line 1838
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_2

    .line 1840
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1842
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInPlaceholder()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->inPlaceholder:Z

    return v0
.end method

.method public isInVerticalChain()Z
    .locals 2

    .line 1919
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_2

    .line 1921
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1923
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 6

    .line 299
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 300
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 301
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 302
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 303
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 304
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 305
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 306
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 308
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 309
    const/4 v2, 0x0

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 310
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 311
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 312
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 313
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 314
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 315
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 316
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 317
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 318
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 319
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 320
    sget v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 321
    sget v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 322
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v4, v3, v2

    .line 323
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 324
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 325
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 326
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 327
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 328
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 329
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 330
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 331
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 332
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 333
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 334
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    .line 335
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aput v3, v0, v5

    .line 336
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 337
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 338
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    .line 339
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aput v3, v0, v5

    .line 340
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 341
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 342
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 343
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 344
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 345
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 346
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 347
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 348
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 349
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 350
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 351
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 352
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 353
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v5, v0, v2

    .line 354
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v5, v0, v5

    .line 355
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 356
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aput-boolean v2, v0, v2

    .line 357
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aput-boolean v2, v0, v5

    .line 358
    return-void
.end method

.method public resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V
    .locals 1
    .param p1, "cache"    # Landroidx/constraintlayout/solver/Cache;

    .line 401
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 402
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 403
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 404
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 405
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 406
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 407
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 408
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 409
    return-void
.end method

.method public setBaselineDistance(I)V
    .locals 1
    .param p1, "baseline"    # I

    .line 1322
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 1323
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 1324
    return-void
.end method

.method public setCompanionWidget(Ljava/lang/Object;)V
    .locals 0
    .param p1, "companion"    # Ljava/lang/Object;

    .line 1333
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 1334
    return-void
.end method

.method public setDebugName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 550
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 551
    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .locals 12
    .param p1, "ratio"    # Ljava/lang/String;

    .line 1052
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto/16 :goto_5

    .line 1056
    :cond_1
    const/4 v1, -0x1

    .line 1057
    .local v1, "dimensionRatioSide":I
    const/4 v2, 0x0

    .line 1058
    .local v2, "dimensionRatio":F
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1059
    .local v3, "len":I
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1060
    .local v4, "commaIndex":I
    const/4 v5, 0x1

    if-lez v4, :cond_4

    add-int/lit8 v6, v3, -0x1

    if-ge v4, v6, :cond_4

    .line 1061
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1062
    .local v6, "dimension":Ljava/lang/String;
    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1063
    const/4 v1, 0x0

    goto :goto_0

    .line 1064
    :cond_2
    const-string v7, "H"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1065
    const/4 v1, 0x1

    .line 1067
    :cond_3
    :goto_0
    nop

    .end local v6    # "dimension":Ljava/lang/String;
    add-int/2addr v4, v5

    .line 1068
    goto :goto_1

    .line 1069
    :cond_4
    const/4 v4, 0x0

    .line 1071
    :goto_1
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1073
    .local v6, "colonIndex":I
    if-ltz v6, :cond_8

    add-int/lit8 v7, v3, -0x1

    if-ge v6, v7, :cond_8

    .line 1074
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1075
    .local v7, "nominator":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1076
    .local v8, "denominator":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 1078
    :try_start_0
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 1079
    .local v9, "nominatorValue":F
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 1080
    .local v10, "denominatorValue":F
    cmpl-float v11, v9, v0

    if-lez v11, :cond_6

    cmpl-float v11, v10, v0

    if-lez v11, :cond_6

    .line 1081
    if-ne v1, v5, :cond_5

    .line 1082
    div-float v5, v10, v9

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v2, v5

    goto :goto_2

    .line 1087
    .end local v9    # "nominatorValue":F
    .end local v10    # "denominatorValue":F
    :catch_0
    move-exception v5

    goto :goto_3

    .line 1084
    .restart local v9    # "nominatorValue":F
    .restart local v10    # "denominatorValue":F
    :cond_5
    div-float v5, v9, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .line 1089
    .end local v9    # "nominatorValue":F
    .end local v10    # "denominatorValue":F
    :cond_6
    :goto_2
    nop

    .line 1091
    .end local v7    # "nominator":Ljava/lang/String;
    .end local v8    # "denominator":Ljava/lang/String;
    :cond_7
    :goto_3
    goto :goto_4

    .line 1092
    :cond_8
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1093
    .local v5, "r":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_9

    .line 1095
    :try_start_1
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v7

    .line 1098
    goto :goto_4

    .line 1096
    :catch_1
    move-exception v7

    .line 1102
    .end local v5    # "r":Ljava/lang/String;
    :cond_9
    :goto_4
    cmpl-float v0, v2, v0

    if-lez v0, :cond_a

    .line 1103
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1104
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1106
    :cond_a
    return-void

    .line 1053
    .end local v1    # "dimensionRatioSide":I
    .end local v2    # "dimensionRatio":F
    .end local v3    # "len":I
    .end local v4    # "commaIndex":I
    .end local v6    # "colonIndex":I
    :goto_5
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1054
    return-void
.end method

.method public setFrame(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1208
    sub-int v0, p3, p1

    .line 1209
    .local v0, "w":I
    sub-int v1, p4, p2

    .line 1211
    .local v1, "h":I
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1212
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1214
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 1215
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1216
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1217
    return-void

    .line 1221
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v4

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    if-ge v0, v2, :cond_1

    .line 1222
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1224
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    if-ge v1, v2, :cond_2

    .line 1225
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1228
    :cond_2
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1229
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1231
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v2, v3, :cond_3

    .line 1232
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1234
    :cond_3
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v2, v3, :cond_4

    .line 1235
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1241
    :cond_4
    return-void
.end method

.method public setHasBaseline(Z)V
    .locals 0
    .param p1, "hasBaseline"    # Z

    .line 171
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 172
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "h"    # I

    .line 990
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 991
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v0, v1, :cond_0

    .line 992
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 994
    :cond_0
    return-void
.end method

.method public setHorizontalBiasPercent(F)V
    .locals 0
    .param p1, "horizontalBiasPercent"    # F

    .line 1143
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1144
    return-void
.end method

.method public setHorizontalChainStyle(I)V
    .locals 0
    .param p1, "horizontalChainStyle"    # I

    .line 1386
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 1387
    return-void
.end method

.method public setHorizontalDimension(II)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 1265
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1266
    sub-int v0, p2, p1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1267
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_0

    .line 1268
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1270
    :cond_0
    return-void
.end method

.method public setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2
    .param p1, "behaviour"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1820
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1821
    return-void
.end method

.method public setHorizontalMatchStyle(IIIF)V
    .locals 1
    .param p1, "horizontalMatchStyle"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "percent"    # F

    .line 1019
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1020
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 1021
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 1022
    iput p4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 1023
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v0, :cond_1

    .line 1024
    const/4 v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1026
    :cond_1
    return-void
.end method

.method public setHorizontalWeight(F)V
    .locals 2
    .param p1, "horizontalWeight"    # F

    .line 1367
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1368
    return-void
.end method

.method protected setInBarrier(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "value"    # Z

    .line 187
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aput-boolean p2, v0, p1

    .line 188
    return-void
.end method

.method public setInPlaceholder(Z)V
    .locals 0
    .param p1, "inPlaceholder"    # Z

    .line 183
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->inPlaceholder:Z

    .line 184
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 2
    .param p1, "maxHeight"    # I

    .line 151
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 152
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 2
    .param p1, "maxWidth"    # I

    .line 147
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 148
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "h"    # I

    .line 1175
    if-gez p1, :cond_0

    .line 1176
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    goto :goto_0

    .line 1178
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 1180
    :goto_0
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "w"    # I

    .line 1162
    if-gez p1, :cond_0

    .line 1163
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    goto :goto_0

    .line 1165
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 1167
    :goto_0
    return-void
.end method

.method public setOrigin(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 924
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 925
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 926
    return-void
.end method

.method public setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 0
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 449
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 450
    return-void
.end method

.method public setVerticalBiasPercent(F)V
    .locals 0
    .param p1, "verticalBiasPercent"    # F

    .line 1153
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1154
    return-void
.end method

.method public setVerticalChainStyle(I)V
    .locals 0
    .param p1, "verticalChainStyle"    # I

    .line 1406
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 1407
    return-void
.end method

.method public setVerticalDimension(II)V
    .locals 2
    .param p1, "top"    # I
    .param p2, "bottom"    # I

    .line 1279
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1280
    sub-int v0, p2, p1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1281
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v0, v1, :cond_0

    .line 1282
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1284
    :cond_0
    return-void
.end method

.method public setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2
    .param p1, "behaviour"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1829
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1830
    return-void
.end method

.method public setVerticalMatchStyle(IIIF)V
    .locals 1
    .param p1, "verticalMatchStyle"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "percent"    # F

    .line 1037
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1038
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 1039
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 1040
    iput p4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 1041
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v0, :cond_1

    .line 1042
    const/4 v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1044
    :cond_1
    return-void
.end method

.method public setVerticalWeight(F)V
    .locals 2
    .param p1, "verticalWeight"    # F

    .line 1376
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1377
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 525
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 526
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .param p1, "w"    # I

    .line 978
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 979
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_0

    .line 980
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 982
    :cond_0
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .line 905
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 906
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .line 914
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 915
    return-void
.end method

.method public setupDimensionRatio(ZZZZ)V
    .locals 5
    .param p1, "hparentWrapContent"    # Z
    .param p2, "vparentWrapContent"    # Z
    .param p3, "horizontalDimensionFixed"    # Z
    .param p4, "verticalDimensionFixed"    # Z

    .line 2266
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 2267
    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    .line 2268
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_0

    .line 2269
    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    .line 2270
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2271
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    if-ne v0, v4, :cond_1

    .line 2273
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float v0, v1, v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2278
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2279
    :cond_2
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_1

    .line 2280
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2281
    :cond_4
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2285
    :cond_5
    :goto_1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v4, :cond_8

    .line 2286
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 2287
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2289
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2290
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_2

    .line 2291
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2292
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float v0, v1, v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2293
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2307
    :cond_8
    :goto_2
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v4, :cond_a

    .line 2308
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v0, :cond_9

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v0, :cond_9

    .line 2309
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_3

    .line 2310
    :cond_9
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v0, :cond_a

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v0, :cond_a

    .line 2311
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2312
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2320
    :cond_a
    :goto_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    const-string v2, ""

    const-string v3, " "

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromRuns(ZZ)V
    .locals 9
    .param p1, "updateHorizontal"    # Z
    .param p2, "updateVertical"    # Z

    .line 2858
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->isResolved()Z

    move-result v0

    and-int/2addr p1, v0

    .line 2859
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->isResolved()Z

    move-result v0

    and-int/2addr p2, v0

    .line 2860
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 2861
    .local v0, "left":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 2862
    .local v1, "top":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 2863
    .local v2, "right":I
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 2864
    .local v3, "bottom":I
    sub-int v4, v2, v0

    .line 2865
    .local v4, "w":I
    sub-int v5, v3, v1

    .line 2866
    .local v5, "h":I
    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v6, -0x80000000

    if-eq v0, v6, :cond_0

    const v7, 0x7fffffff

    if-eq v0, v7, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v1, v7, :cond_0

    if-eq v2, v6, :cond_0

    if-eq v2, v7, :cond_0

    if-eq v3, v6, :cond_0

    if-ne v3, v7, :cond_1

    .line 2871
    :cond_0
    const/4 v0, 0x0

    .line 2872
    const/4 v1, 0x0

    .line 2873
    const/4 v2, 0x0

    .line 2874
    const/4 v3, 0x0

    .line 2877
    :cond_1
    sub-int v4, v2, v0

    .line 2878
    sub-int v5, v3, v1

    .line 2880
    if-eqz p1, :cond_2

    .line 2881
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 2883
    :cond_2
    if-eqz p2, :cond_3

    .line 2884
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 2887
    :cond_3
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-ne v6, v7, :cond_4

    .line 2888
    iput v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 2889
    iput v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 2890
    return-void

    .line 2894
    :cond_4
    if-eqz p1, :cond_6

    .line 2895
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v8

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_5

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    if-ge v4, v6, :cond_5

    .line 2896
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 2898
    :cond_5
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 2899
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v6, v7, :cond_6

    .line 2900
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 2904
    :cond_6
    if-eqz p2, :cond_8

    .line 2905
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_7

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    if-ge v5, v6, :cond_7

    .line 2906
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 2908
    :cond_7
    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 2909
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v6, v7, :cond_8

    .line 2910
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 2914
    :cond_8
    return-void
.end method

.method public updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 8
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 2729
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    .line 2730
    .local v0, "left":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v1

    .line 2731
    .local v1, "top":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v2

    .line 2732
    .local v2, "right":I
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v3

    .line 2734
    .local v3, "bottom":I
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_0

    .line 2735
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 2736
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v2, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 2738
    :cond_0
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_1

    .line 2739
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 2740
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v3, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 2743
    :cond_1
    sub-int v4, v2, v0

    .line 2744
    .local v4, "w":I
    sub-int v5, v3, v1

    .line 2745
    .local v5, "h":I
    if-ltz v4, :cond_2

    if-ltz v5, :cond_2

    const/high16 v6, -0x80000000

    if-eq v0, v6, :cond_2

    const v7, 0x7fffffff

    if-eq v0, v7, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v7, :cond_2

    if-eq v2, v6, :cond_2

    if-eq v2, v7, :cond_2

    if-eq v3, v6, :cond_2

    if-ne v3, v7, :cond_3

    .line 2750
    :cond_2
    const/4 v0, 0x0

    .line 2751
    const/4 v1, 0x0

    .line 2752
    const/4 v2, 0x0

    .line 2753
    const/4 v3, 0x0

    .line 2755
    :cond_3
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFrame(IIII)V

    .line 2756
    return-void
.end method
