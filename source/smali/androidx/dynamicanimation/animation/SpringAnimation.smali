.class public final Landroidx/dynamicanimation/animation/SpringAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source "SpringAnimation.java"


# instance fields
.field private mEndRequested:Z

.field private mPendingPosition:F

.field private mSpring:Landroidx/dynamicanimation/animation/SpringForce;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 1

    .line 91
    .local p1, "object":Ljava/lang/Object;, "TK;"
    .local p2, "property":Landroidx/dynamicanimation/animation/FloatPropertyCompat;, "Landroidx/dynamicanimation/animation/FloatPropertyCompat<TK;>;"
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 61
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 92
    return-void
.end method

.method private sanityCheck()V
    .locals 4

    .line 197
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    float-to-double v0, v0

    .line 202
    .local v0, "finalPosition":D
    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_1

    .line 205
    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    float-to-double v2, v2

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_0

    .line 209
    return-void

    .line 206
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Final position of the spring cannot be less than the min value."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Final position of the spring cannot be greater than the max value."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    .end local v0    # "finalPosition":D
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public animateToFinalPosition(F)V
    .locals 1
    .param p1, "finalPosition"    # F

    .line 152
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 158
    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 159
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 161
    :goto_0
    return-void
.end method

.method isAtEquilibrium(FF)Z
    .locals 1
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .line 262
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->isAtEquilibrium(FF)Z

    move-result v0

    return v0
.end method

.method public setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0
    .param p1, "force"    # Landroidx/dynamicanimation/animation/SpringForce;

    .line 128
    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 129
    return-object p0
.end method

.method public start()V
    .locals 3

    .line 134
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->sanityCheck()V

    .line 135
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getValueThreshold()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setValueThreshold(D)V

    .line 136
    invoke-super {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    .line 137
    return-void
.end method

.method updateValueAndVelocity(J)Z
    .locals 19
    .param p1, "deltaT"    # J

    .line 215
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_1

    .line 216
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v3, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 218
    iput v2, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 220
    :cond_0
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 221
    iput v10, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 222
    iput-boolean v9, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 223
    return v8

    .line 226
    :cond_1
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    float-to-double v3, v1

    .line 230
    .local v3, "lastPosition":D
    iget-object v11, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    float-to-double v12, v1

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    float-to-double v14, v1

    const-wide/16 v5, 0x2

    div-long v16, p1, v5

    invoke-virtual/range {v11 .. v17}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    .line 231
    .local v1, "massState":Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    iget-object v7, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v11, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v7, v11}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 232
    iput v2, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 234
    iget-object v12, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    float-to-double v13, v2

    iget v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    float-to-double v8, v2

    div-long v17, p1, v5

    move-wide v15, v8

    invoke-virtual/range {v12 .. v18}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    .line 235
    iget v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v2, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 236
    iget v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v2, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 238
    .end local v1    # "massState":Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    .end local v3    # "lastPosition":D
    goto :goto_0

    .line 239
    :cond_2
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v2, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    float-to-double v2, v2

    iget v4, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    float-to-double v4, v4

    move-wide/from16 v6, p1

    invoke-virtual/range {v1 .. v7}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    .line 240
    .restart local v1    # "massState":Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    iget v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v2, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 241
    iget v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v2, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 244
    .end local v1    # "massState":Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    :goto_0
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v2, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 245
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v2, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 247
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v2, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 249
    iput v10, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 250
    const/4 v1, 0x1

    return v1

    .line 252
    :cond_3
    const/4 v1, 0x0

    return v1
.end method
