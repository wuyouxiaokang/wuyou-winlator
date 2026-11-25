.class public abstract Lcom/wuyouwin/xenvironment/EnvironmentComponent;
.super Ljava/lang/Object;
.source "EnvironmentComponent.java"


# instance fields
.field protected environment:Lcom/wuyouwin/xenvironment/XEnvironment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 0

    .line 10
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 12
    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
