.class final Landroidx/core/content/res/ViewingConditions;
.super Ljava/lang/Object;
.source "ViewingConditions.java"


# static fields
.field static final DEFAULT:Landroidx/core/content/res/ViewingConditions;


# instance fields
.field private final mAw:F

.field private final mC:F

.field private final mFl:F

.field private final mFlRoot:F

.field private final mN:F

.field private final mNbb:F

.field private final mNc:F

.field private final mNcb:F

.field private final mRgbD:[F

.field private final mZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 53
    sget-object v0, Landroidx/core/content/res/CamUtils;->WHITE_POINT_D65:[F

    .line 56
    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Landroidx/core/content/res/CamUtils;->yFromLStar(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x404fd4bbab8b494cL    # 63.66197723675813

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 54
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Landroidx/core/content/res/ViewingConditions;->make([FFFFZ)Landroidx/core/content/res/ViewingConditions;

    move-result-object v0

    sput-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 53
    return-void
.end method

.method private constructor <init>(FFFFFF[FFFF)V
    .locals 0
    .param p1, "n"    # F
    .param p2, "aw"    # F
    .param p3, "nbb"    # F
    .param p4, "ncb"    # F
    .param p5, "c"    # F
    .param p6, "nc"    # F
    .param p7, "rgbD"    # [F
    .param p8, "fl"    # F
    .param p9, "fLRoot"    # F
    .param p10, "z"    # F

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Landroidx/core/content/res/ViewingConditions;->mN:F

    .line 114
    iput p2, p0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    .line 115
    iput p3, p0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    .line 116
    iput p4, p0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    .line 117
    iput p5, p0, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 118
    iput p6, p0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    .line 119
    iput-object p7, p0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    .line 120
    iput p8, p0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    .line 121
    iput p9, p0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    .line 122
    iput p10, p0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    .line 123
    return-void
.end method

.method static make([FFFFZ)Landroidx/core/content/res/ViewingConditions;
    .locals 33
    .param p0, "whitepoint"    # [F
    .param p1, "adaptingLuminance"    # F
    .param p2, "backgroundLstar"    # F
    .param p3, "surround"    # F
    .param p4, "discountingIlluminant"    # Z

    .line 130
    move/from16 v0, p1

    const/4 v1, 0x3

    sget-object v2, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 131
    .local v2, "matrix":[[F
    move-object/from16 v3, p0

    .line 132
    .local v3, "xyz":[F
    const/4 v4, 0x0

    aget v5, v3, v4

    aget-object v6, v2, v4

    aget v6, v6, v4

    mul-float/2addr v5, v6

    const/4 v6, 0x1

    aget v7, v3, v6

    aget-object v8, v2, v4

    aget v8, v8, v6

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    const/4 v7, 0x2

    aget v8, v3, v7

    aget-object v9, v2, v4

    aget v9, v9, v7

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    .line 133
    .local v5, "rW":F
    aget v8, v3, v4

    aget-object v9, v2, v6

    aget v9, v9, v4

    mul-float/2addr v8, v9

    aget v9, v3, v6

    aget-object v10, v2, v6

    aget v10, v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    aget v9, v3, v7

    aget-object v10, v2, v6

    aget v10, v10, v7

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 134
    .local v8, "gW":F
    aget v9, v3, v4

    aget-object v10, v2, v7

    aget v10, v10, v4

    mul-float/2addr v9, v10

    aget v10, v3, v6

    aget-object v11, v2, v7

    aget v11, v11, v6

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aget v10, v3, v7

    aget-object v11, v2, v7

    aget v11, v11, v7

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 137
    .local v9, "bW":F
    const/high16 v10, 0x41200000    # 10.0f

    div-float v11, p3, v10

    const v12, 0x3f4ccccd    # 0.8f

    add-float/2addr v11, v12

    .line 139
    .local v11, "f":F
    float-to-double v13, v11

    const-wide v15, 0x3feccccccccccccdL    # 0.9

    cmpl-double v13, v13, v15

    const v14, 0x3f170a3d    # 0.59f

    if-ltz v13, :cond_0

    const v12, 0x3f666666    # 0.9f

    sub-float v12, v11, v12

    mul-float/2addr v12, v10

    const v10, 0x3f30a3d7    # 0.69f

    invoke-static {v14, v10, v12}, Landroidx/core/content/res/CamUtils;->lerp(FFF)F

    move-result v10

    :goto_0
    move/from16 v18, v10

    goto :goto_1

    :cond_0
    sub-float v12, v11, v12

    mul-float/2addr v12, v10

    const v10, 0x3f066666    # 0.525f

    invoke-static {v10, v14, v12}, Landroidx/core/content/res/CamUtils;->lerp(FFF)F

    move-result v10

    goto :goto_0

    .line 142
    .local v18, "c":F
    :goto_1
    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz p4, :cond_1

    move v12, v10

    goto :goto_2

    :cond_1
    neg-float v12, v0

    const/high16 v13, 0x42280000    # 42.0f

    sub-float/2addr v12, v13

    const/high16 v13, 0x42b80000    # 92.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    double-to-float v12, v12

    const v13, 0x3e8e38e4

    mul-float/2addr v12, v13

    sub-float v12, v10, v12

    mul-float/2addr v12, v11

    .line 145
    .local v12, "d":F
    :goto_2
    float-to-double v13, v12

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v13, v13, v15

    if-lez v13, :cond_2

    move v13, v10

    goto :goto_3

    :cond_2
    float-to-double v13, v12

    const-wide/16 v15, 0x0

    cmpg-double v13, v13, v15

    if-gez v13, :cond_3

    const/4 v13, 0x0

    goto :goto_3

    :cond_3
    move v13, v12

    :goto_3
    move v12, v13

    .line 147
    move/from16 v19, v11

    .line 159
    .local v19, "nc":F
    const/high16 v13, 0x42c80000    # 100.0f

    div-float v14, v13, v5

    mul-float/2addr v14, v12

    add-float/2addr v14, v10

    sub-float/2addr v14, v12

    div-float v15, v13, v8

    mul-float/2addr v15, v12

    add-float/2addr v15, v10

    sub-float/2addr v15, v12

    div-float/2addr v13, v9

    mul-float/2addr v13, v12

    add-float/2addr v13, v10

    sub-float/2addr v13, v12

    new-array v10, v1, [F

    aput v14, v10, v4

    aput v15, v10, v6

    aput v13, v10, v7

    .line 162
    .local v10, "rgbD":[F
    const/high16 v13, 0x40a00000    # 5.0f

    mul-float/2addr v13, v0

    const/high16 v14, 0x3f800000    # 1.0f

    add-float/2addr v13, v14

    div-float v24, v14, v13

    .line 163
    .local v24, "k":F
    mul-float v13, v24, v24

    mul-float v13, v13, v24

    mul-float v25, v13, v24

    .line 164
    .local v25, "k4":F
    sub-float v26, v14, v25

    .line 165
    .local v26, "k4F":F
    mul-float v13, v25, v0

    const v14, 0x3dcccccd    # 0.1f

    mul-float v14, v14, v26

    mul-float v14, v14, v26

    const-wide/high16 v15, 0x4014000000000000L    # 5.0

    move-object/from16 v27, v2

    .end local v2    # "matrix":[[F
    .local v27, "matrix":[[F
    float-to-double v1, v0

    mul-double/2addr v1, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v14, v1

    add-float v1, v13, v14

    .line 169
    .local v1, "fl":F
    invoke-static/range {p2 .. p2}, Landroidx/core/content/res/CamUtils;->yFromLStar(F)F

    move-result v2

    aget v13, p0, v6

    div-float/2addr v2, v13

    .line 173
    .local v2, "n":F
    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    const v14, 0x3fbd70a4    # 1.48f

    add-float v28, v13, v14

    .line 176
    .local v28, "z":F
    float-to-double v13, v2

    move/from16 v29, v8

    .end local v8    # "gW":F
    .local v29, "gW":F
    const-wide v7, 0x3fc999999999999aL    # 0.2

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    const v8, 0x3f39999a    # 0.725f

    div-float/2addr v8, v7

    .line 177
    .local v8, "nbb":F
    move/from16 v17, v8

    .line 181
    .local v17, "ncb":F
    aget v7, v10, v4

    mul-float/2addr v7, v1

    mul-float/2addr v7, v5

    float-to-double v13, v7

    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    div-double v13, v13, v21

    move/from16 v30, v5

    .end local v5    # "rW":F
    .local v30, "rW":F
    const-wide v4, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    double-to-float v13, v13

    aget v14, v10, v6

    mul-float/2addr v14, v1

    mul-float v14, v14, v29

    move/from16 v31, v8

    .end local v8    # "nbb":F
    .local v31, "nbb":F
    float-to-double v7, v14

    div-double v7, v7, v21

    .line 182
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    const/4 v8, 0x2

    aget v14, v10, v8

    mul-float/2addr v14, v1

    mul-float/2addr v14, v9

    float-to-double v14, v14

    div-double v14, v14, v21

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x3

    new-array v14, v5, [F

    const/4 v5, 0x0

    aput v13, v14, v5

    aput v7, v14, v6

    aput v4, v14, v8

    move-object v4, v14

    .line 185
    .local v4, "rgbAFactors":[F
    aget v7, v4, v5

    const/high16 v8, 0x43c80000    # 400.0f

    mul-float v13, v7, v8

    aget v14, v4, v5

    const v5, 0x41d90a3d    # 27.13f

    add-float/2addr v14, v5

    div-float/2addr v13, v14

    aget v14, v4, v6

    mul-float/2addr v14, v8

    aget v16, v4, v6

    add-float v16, v16, v5

    div-float v14, v14, v16

    const/4 v15, 0x2

    aget v16, v4, v15

    mul-float v16, v16, v8

    aget v8, v4, v15

    add-float/2addr v8, v5

    div-float v16, v16, v8

    const/4 v5, 0x3

    new-array v5, v5, [F

    const/4 v7, 0x0

    aput v13, v5, v7

    aput v14, v5, v6

    aput v16, v5, v15

    .line 189
    .local v5, "rgbA":[F
    const/high16 v8, 0x40000000    # 2.0f

    aget v7, v5, v7

    mul-float/2addr v7, v8

    aget v6, v5, v6

    add-float/2addr v7, v6

    const v6, 0x3d4ccccd    # 0.05f

    aget v8, v5, v15

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    mul-float v7, v7, v31

    .line 191
    .local v7, "aw":F
    new-instance v6, Landroidx/core/content/res/ViewingConditions;

    float-to-double v13, v1

    move-object v8, v3

    move-object/from16 v32, v4

    .end local v3    # "xyz":[F
    .end local v4    # "rgbAFactors":[F
    .local v8, "xyz":[F
    .local v32, "rgbAFactors":[F
    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    move-object v13, v6

    move v14, v2

    move v15, v7

    move/from16 v16, v31

    move-object/from16 v20, v10

    move/from16 v21, v1

    move/from16 v22, v3

    move/from16 v23, v28

    invoke-direct/range {v13 .. v23}, Landroidx/core/content/res/ViewingConditions;-><init>(FFFFFF[FFFF)V

    return-object v6
.end method


# virtual methods
.method getAw()F
    .locals 1

    .line 71
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    return v0
.end method

.method getC()F
    .locals 1

    .line 87
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mC:F

    return v0
.end method

.method getFl()F
    .locals 1

    .line 100
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    return v0
.end method

.method getFlRoot()F
    .locals 1

    .line 104
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    return v0
.end method

.method getN()F
    .locals 1

    .line 75
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mN:F

    return v0
.end method

.method getNbb()F
    .locals 1

    .line 79
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    return v0
.end method

.method getNc()F
    .locals 1

    .line 91
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    return v0
.end method

.method getNcb()F
    .locals 1

    .line 83
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    return v0
.end method

.method getRgbD()[F
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    return-object v0
.end method

.method getZ()F
    .locals 1

    .line 108
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    return v0
.end method
