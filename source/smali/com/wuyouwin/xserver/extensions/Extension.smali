.class public abstract Lcom/wuyouwin/xserver/extensions/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# instance fields
.field private firstErrorId:B

.field private firstEventId:B

.field private final majorOpcode:B

.field protected final xServer:Lcom/wuyouwin/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/wuyouwin/xserver/XServer;B)V
    .locals 0
    .param p1, "xServer"    # Lcom/wuyouwin/xserver/XServer;
    .param p2, "majorOpcode"    # B

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/wuyouwin/xserver/extensions/Extension;->xServer:Lcom/wuyouwin/xserver/XServer;

    .line 20
    iput-byte p2, p0, Lcom/wuyouwin/xserver/extensions/Extension;->majorOpcode:B

    .line 21
    return-void
.end method


# virtual methods
.method public getErrorCount()B
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getEventCount()B
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public final getFirstErrorId()B
    .locals 1

    .line 38
    iget-byte v0, p0, Lcom/wuyouwin/xserver/extensions/Extension;->firstErrorId:B

    return v0
.end method

.method public final getFirstEventId()B
    .locals 1

    .line 30
    iget-byte v0, p0, Lcom/wuyouwin/xserver/extensions/Extension;->firstEventId:B

    return v0
.end method

.method public getMajorOpcode()B
    .locals 1

    .line 26
    iget-byte v0, p0, Lcom/wuyouwin/xserver/extensions/Extension;->majorOpcode:B

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract handleRequest(Lcom/wuyouwin/xserver/XClient;Lcom/wuyouwin/xconnector/XInputStream;Lcom/wuyouwin/xconnector/XOutputStream;)V
.end method

.method public final setFirstErrorId(B)V
    .locals 0
    .param p1, "firstErrorId"    # B

    .line 42
    iput-byte p1, p0, Lcom/wuyouwin/xserver/extensions/Extension;->firstErrorId:B

    .line 43
    return-void
.end method

.method public final setFirstEventId(B)V
    .locals 0
    .param p1, "firstEventId"    # B

    .line 34
    iput-byte p1, p0, Lcom/wuyouwin/xserver/extensions/Extension;->firstEventId:B

    .line 35
    return-void
.end method
