.class public Lcom/wuyouwin/xserver/XServer;
.super Ljava/lang/Object;
.source "XServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/xserver/XServer$Lockable;,
        Lcom/wuyouwin/xserver/XServer$SingleXLock;,
        Lcom/wuyouwin/xserver/XServer$MultiXLock;
    }
.end annotation


# static fields
.field public static final LATIN1_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field public final activity:Lcom/wuyouwin/XServerDisplayActivity;

.field public final cursorManager:Lcom/wuyouwin/xserver/CursorManager;

.field public final drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

.field private final extensions:[Lcom/wuyouwin/xserver/extensions/Extension;

.field public final grabManager:Lcom/wuyouwin/xserver/GrabManager;

.field public final graphicsContextManager:Lcom/wuyouwin/xserver/GraphicsContextManager;

.field public final inputDeviceManager:Lcom/wuyouwin/xserver/InputDeviceManager;

.field public final keyboard:Lcom/wuyouwin/xserver/Keyboard;

.field private final locks:Ljava/util/EnumMap;

.field public final pixmapManager:Lcom/wuyouwin/xserver/PixmapManager;

.field public final pointer:Lcom/wuyouwin/xserver/Pointer;

.field private relativeMouseMovement:Z

.field private renderer:Lcom/wuyouwin/renderer/GLRenderer;

.field public final resourceIDs:Lcom/wuyouwin/xserver/ResourceIDs;

.field public final screenInfo:Lcom/wuyouwin/xserver/ScreenInfo;

.field public final selectionManager:Lcom/wuyouwin/xserver/SelectionManager;

.field private shmSegmentManager:Lcom/wuyouwin/xserver/SHMSegmentManager;

.field private winHandler:Lcom/wuyouwin/winhandler/WinHandler;

.field public final windowManager:Lcom/wuyouwin/xserver/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "latin1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/wuyouwin/xserver/XServer;->LATIN1_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/wuyouwin/XServerDisplayActivity;Lcom/wuyouwin/xserver/ScreenInfo;)V
    .locals 6
    .param p1, "activity"    # Lcom/wuyouwin/XServerDisplayActivity;
    .param p2, "screenInfo"    # Lcom/wuyouwin/xserver/ScreenInfo;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/wuyouwin/xserver/ResourceIDs;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/wuyouwin/xserver/ResourceIDs;-><init>(I)V

    iput-object v0, p0, Lcom/wuyouwin/xserver/XServer;->resourceIDs:Lcom/wuyouwin/xserver/ResourceIDs;

    .line 34
    new-instance v0, Lcom/wuyouwin/xserver/GraphicsContextManager;

    invoke-direct {v0}, Lcom/wuyouwin/xserver/GraphicsContextManager;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/XServer;->graphicsContextManager:Lcom/wuyouwin/xserver/GraphicsContextManager;

    .line 39
    invoke-static {p0}, Lcom/wuyouwin/xserver/Keyboard;->createKeyboard(Lcom/wuyouwin/xserver/XServer;)Lcom/wuyouwin/xserver/Keyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/xserver/XServer;->keyboard:Lcom/wuyouwin/xserver/Keyboard;

    .line 40
    new-instance v0, Lcom/wuyouwin/xserver/Pointer;

    invoke-direct {v0, p0}, Lcom/wuyouwin/xserver/Pointer;-><init>(Lcom/wuyouwin/xserver/XServer;)V

    iput-object v0, p0, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    .line 47
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/wuyouwin/xserver/XServer$Lockable;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/wuyouwin/xserver/XServer;->locks:Ljava/util/EnumMap;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wuyouwin/xserver/XServer;->relativeMouseMovement:Z

    .line 51
    iput-object p1, p0, Lcom/wuyouwin/xserver/XServer;->activity:Lcom/wuyouwin/XServerDisplayActivity;

    .line 52
    iput-object p2, p0, Lcom/wuyouwin/xserver/XServer;->screenInfo:Lcom/wuyouwin/xserver/ScreenInfo;

    .line 53
    nop

    .line 54
    invoke-static {}, Lcom/wuyouwin/xserver/XServer$Lockable;->values()[Lcom/wuyouwin/xserver/XServer$Lockable;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .local v3, "lockable":Lcom/wuyouwin/xserver/XServer$Lockable;
    iget-object v4, p0, Lcom/wuyouwin/xserver/XServer;->locks:Ljava/util/EnumMap;

    new-instance v5, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v3    # "lockable":Lcom/wuyouwin/xserver/XServer$Lockable;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Lcom/wuyouwin/xserver/PixmapManager;

    invoke-direct {v0}, Lcom/wuyouwin/xserver/PixmapManager;-><init>()V

    iput-object v0, p0, Lcom/wuyouwin/xserver/XServer;->pixmapManager:Lcom/wuyouwin/xserver/PixmapManager;

    .line 57
    new-instance v0, Lcom/wuyouwin/xserver/DrawableManager;

    invoke-direct {v0, p0}, Lcom/wuyouwin/xserver/DrawableManager;-><init>(Lcom/wuyouwin/xserver/XServer;)V

    iput-object v0, p0, Lcom/wuyouwin/xserver/XServer;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    .line 58
    new-instance v0, Lcom/wuyouwin/xserver/CursorManager;

    iget-object v1, p0, Lcom/wuyouwin/xserver/XServer;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    invoke-direct {v0, v1}, Lcom/wuyouwin/xserver/CursorManager;-><init>(Lcom/wuyouwin/xserver/DrawableManager;)V

    iput-object v0, p0, Lcom/wuyouwin/xserver/XServer;->cursorManager:Lcom/wuyouwin/xserver/CursorManager;

    .line 59
    new-instance v0, Lcom/wuyouwin/xserver/WindowManager;

    iget-object v1, p0, Lcom/wuyouwin/xserver/XServer;->drawableManager:Lcom/wuyouwin/xserver/DrawableManager;

    invoke-direct {v0, p2, v1}, Lcom/wuyouwin/xserver/WindowManager;-><init>(Lcom/wuyouwin/xserver/ScreenInfo;Lcom/wuyouwin/xserver/DrawableManager;)V

    iput-object v0, p0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    .line 60
    new-instance v0, Lcom/wuyouwin/xserver/SelectionManager;

    iget-object v1, p0, Lcom/wuyouwin/xserver/XServer;->windowManager:Lcom/wuyouwin/xserver/WindowManager;

    invoke-direct {v0, v1}, Lcom/wuyouwin/xserver/SelectionManager;-><init>(Lcom/wuyouwin/xserver/WindowManager;)V

    iput-object v0, p0, Lcom/wuyouwin/xserver/XServer;->selectionManager:Lcom/wuyouwin/xserver/SelectionManager;

    .line 61
    new-instance v0, Lcom/wuyouwin/xserver/InputDeviceManager;

    invoke-direct {v0, p0}, Lcom/wuyouwin/xserver/InputDeviceManager;-><init>(Lcom/wuyouwin/xserver/XServer;)V

    iput-object v0, p0, Lcom/wuyouwin/xserver/XServer;->inputDeviceManager:Lcom/wuyouwin/xserver/InputDeviceManager;

    .line 62
    new-instance v0, Lcom/wuyouwin/xserver/GrabManager;

    invoke-direct {v0, p0}, Lcom/wuyouwin/xserver/GrabManager;-><init>(Lcom/wuyouwin/xserver/XServer;)V

    iput-object v0, p0, Lcom/wuyouwin/xserver/XServer;->grabManager:Lcom/wuyouwin/xserver/GrabManager;

    .line 64
    invoke-static {p0}, Lcom/wuyouwin/xserver/DesktopHelper;->attachTo(Lcom/wuyouwin/xserver/XServer;)V

    .line 65
    invoke-direct {p0}, Lcom/wuyouwin/xserver/XServer;->setupExtensions()[Lcom/wuyouwin/xserver/extensions/Extension;

    move-result-object v0

    iput-object v0, p0, Lcom/wuyouwin/xserver/XServer;->extensions:[Lcom/wuyouwin/xserver/extensions/Extension;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/wuyouwin/xserver/XServer;)Ljava/util/EnumMap;
    .locals 1
    .param p0, "x0"    # Lcom/wuyouwin/xserver/XServer;

    .line 23
    iget-object v0, p0, Lcom/wuyouwin/xserver/XServer;->locks:Ljava/util/EnumMap;

    return-object v0
.end method

.method private setupExtensions()[Lcom/wuyouwin/xserver/extensions/Extension;
    .locals 13

    .line 199
    const/16 v0, -0x64

    .line 200
    .local v0, "opcode":B
    new-instance v1, Lcom/wuyouwin/xserver/extensions/BigReqExtension;

    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    int-to-byte v3, v3

    .end local v0    # "opcode":B
    .local v3, "opcode":B
    invoke-direct {v1, p0, v0}, Lcom/wuyouwin/xserver/extensions/BigReqExtension;-><init>(Lcom/wuyouwin/xserver/XServer;B)V

    new-instance v0, Lcom/wuyouwin/xserver/extensions/MITSHMExtension;

    add-int/lit8 v4, v3, -0x1

    int-to-byte v4, v4

    .end local v3    # "opcode":B
    .local v4, "opcode":B
    invoke-direct {v0, p0, v3}, Lcom/wuyouwin/xserver/extensions/MITSHMExtension;-><init>(Lcom/wuyouwin/xserver/XServer;B)V

    new-instance v3, Lcom/wuyouwin/xserver/extensions/DRI3Extension;

    add-int/lit8 v5, v4, -0x1

    int-to-byte v5, v5

    .end local v4    # "opcode":B
    .local v5, "opcode":B
    invoke-direct {v3, p0, v4}, Lcom/wuyouwin/xserver/extensions/DRI3Extension;-><init>(Lcom/wuyouwin/xserver/XServer;B)V

    new-instance v4, Lcom/wuyouwin/xserver/extensions/PresentExtension;

    add-int/lit8 v6, v5, -0x1

    int-to-byte v6, v6

    .end local v5    # "opcode":B
    .local v6, "opcode":B
    invoke-direct {v4, p0, v5}, Lcom/wuyouwin/xserver/extensions/PresentExtension;-><init>(Lcom/wuyouwin/xserver/XServer;B)V

    new-instance v5, Lcom/wuyouwin/xserver/extensions/SyncExtension;

    add-int/lit8 v7, v6, -0x1

    int-to-byte v7, v7

    .end local v6    # "opcode":B
    .local v7, "opcode":B
    invoke-direct {v5, p0, v6}, Lcom/wuyouwin/xserver/extensions/SyncExtension;-><init>(Lcom/wuyouwin/xserver/XServer;B)V

    new-instance v6, Lcom/wuyouwin/xserver/extensions/XComposite;

    add-int/lit8 v8, v7, -0x1

    int-to-byte v8, v8

    .end local v7    # "opcode":B
    .local v8, "opcode":B
    invoke-direct {v6, p0, v7}, Lcom/wuyouwin/xserver/extensions/XComposite;-><init>(Lcom/wuyouwin/xserver/XServer;B)V

    new-instance v7, Lcom/wuyouwin/xserver/extensions/GLXExtension;

    add-int/lit8 v9, v8, -0x1

    int-to-byte v9, v9

    .end local v8    # "opcode":B
    .local v9, "opcode":B
    invoke-direct {v7, p0, v8}, Lcom/wuyouwin/xserver/extensions/GLXExtension;-><init>(Lcom/wuyouwin/xserver/XServer;B)V

    new-instance v8, Lcom/wuyouwin/xserver/extensions/GenericEventExtension;

    add-int/lit8 v10, v9, -0x1

    int-to-byte v10, v10

    .end local v9    # "opcode":B
    .local v10, "opcode":B
    invoke-direct {v8, p0, v9}, Lcom/wuyouwin/xserver/extensions/GenericEventExtension;-><init>(Lcom/wuyouwin/xserver/XServer;B)V

    new-instance v9, Lcom/wuyouwin/xserver/extensions/XInputExtension;

    add-int/lit8 v11, v10, -0x1

    int-to-byte v11, v11

    .end local v10    # "opcode":B
    .local v11, "opcode":B
    invoke-direct {v9, p0, v10}, Lcom/wuyouwin/xserver/extensions/XInputExtension;-><init>(Lcom/wuyouwin/xserver/XServer;B)V

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/wuyouwin/xserver/extensions/Extension;

    const/4 v12, 0x0

    aput-object v1, v10, v12

    aput-object v0, v10, v2

    const/4 v0, 0x2

    aput-object v3, v10, v0

    const/4 v0, 0x3

    aput-object v4, v10, v0

    const/4 v0, 0x4

    aput-object v5, v10, v0

    const/4 v0, 0x5

    aput-object v6, v10, v0

    const/4 v0, 0x6

    aput-object v7, v10, v0

    const/4 v0, 0x7

    aput-object v8, v10, v0

    const/16 v0, 0x8

    aput-object v9, v10, v0

    move-object v0, v10

    .line 212
    .local v0, "extensions":[Lcom/wuyouwin/xserver/extensions/Extension;
    const/16 v1, 0x40

    .line 213
    .local v1, "nextEventId":S
    const/16 v3, 0x80

    .line 214
    .local v3, "nextErrorId":S
    array-length v4, v0

    :goto_0
    if-ge v12, v4, :cond_2

    aget-object v5, v0, v12

    .line 215
    .local v5, "extension":Lcom/wuyouwin/xserver/extensions/Extension;
    invoke-virtual {v5}, Lcom/wuyouwin/xserver/extensions/Extension;->getEventCount()B

    move-result v6

    .line 216
    .local v6, "eventCount":B
    invoke-virtual {v5}, Lcom/wuyouwin/xserver/extensions/Extension;->getErrorCount()B

    move-result v7

    .line 217
    .local v7, "errorCount":B
    if-lez v6, :cond_0

    .line 218
    int-to-byte v8, v1

    invoke-virtual {v5, v8}, Lcom/wuyouwin/xserver/extensions/Extension;->setFirstEventId(B)V

    .line 219
    add-int v8, v1, v6

    int-to-short v1, v8

    .line 221
    :cond_0
    if-lez v7, :cond_1

    .line 222
    int-to-byte v8, v3

    invoke-virtual {v5, v8}, Lcom/wuyouwin/xserver/extensions/Extension;->setFirstErrorId(B)V

    .line 223
    add-int v8, v3, v7

    int-to-short v3, v8

    .line 214
    .end local v5    # "extension":Lcom/wuyouwin/xserver/extensions/Extension;
    .end local v6    # "eventCount":B
    .end local v7    # "errorCount":B
    :cond_1
    add-int/2addr v12, v2

    goto :goto_0

    .line 226
    :cond_2
    return-object v0
.end method


# virtual methods
.method public debugPrint(Ljava/lang/String;)V
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/wuyouwin/xserver/XServer;->activity:Lcom/wuyouwin/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/wuyouwin/XServerDisplayActivity;->getDebugDialog()Lcom/wuyouwin/contentdialog/DebugDialog;

    move-result-object v0

    .line 243
    .local v0, "debugDialog":Lcom/wuyouwin/contentdialog/DebugDialog;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xserver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wuyouwin/contentdialog/DebugDialog;->call(Ljava/lang/String;)V

    .line 244
    :cond_0
    return-void
.end method

.method public getExtension(B)Lcom/wuyouwin/xserver/extensions/Extension;
    .locals 2
    .param p1, "opcode"    # B

    .line 230
    rsub-int/lit8 v0, p1, -0x64

    .line 231
    .local v0, "index":I
    iget-object v1, p0, Lcom/wuyouwin/xserver/XServer;->extensions:[Lcom/wuyouwin/xserver/extensions/Extension;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getExtension(Ljava/lang/Class;)Lcom/wuyouwin/xserver/extensions/Extension;
    .locals 5

    .line 235
    .local p1, "extensionClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/wuyouwin/xserver/XServer;->extensions:[Lcom/wuyouwin/xserver/extensions/Extension;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 236
    .local v3, "extension":Lcom/wuyouwin/xserver/extensions/Extension;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p1, :cond_0

    return-object v3

    .line 235
    .end local v3    # "extension":Lcom/wuyouwin/xserver/extensions/Extension;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtensionByName(Ljava/lang/String;)Lcom/wuyouwin/xserver/extensions/Extension;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/wuyouwin/xserver/XServer;->extensions:[Lcom/wuyouwin/xserver/extensions/Extension;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "extension":Lcom/wuyouwin/xserver/extensions/Extension;
    invoke-virtual {v3}, Lcom/wuyouwin/xserver/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    .end local v3    # "extension":Lcom/wuyouwin/xserver/extensions/Extension;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderer()Lcom/wuyouwin/renderer/GLRenderer;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/wuyouwin/xserver/XServer;->renderer:Lcom/wuyouwin/renderer/GLRenderer;

    return-object v0
.end method

.method public getSHMSegmentManager()Lcom/wuyouwin/xserver/SHMSegmentManager;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/wuyouwin/xserver/XServer;->shmSegmentManager:Lcom/wuyouwin/xserver/SHMSegmentManager;

    return-object v0
.end method

.method public getWinHandler()Lcom/wuyouwin/winhandler/WinHandler;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/wuyouwin/xserver/XServer;->winHandler:Lcom/wuyouwin/winhandler/WinHandler;

    return-object v0
.end method

.method public injectKeyPress(Lcom/wuyouwin/xserver/XKeycode;)V
    .locals 1
    .param p1, "xKeycode"    # Lcom/wuyouwin/xserver/XKeycode;

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/wuyouwin/xserver/XServer;->injectKeyPress(Lcom/wuyouwin/xserver/XKeycode;I)V

    .line 184
    return-void
.end method

.method public injectKeyPress(Lcom/wuyouwin/xserver/XKeycode;I)V
    .locals 3
    .param p1, "xKeycode"    # Lcom/wuyouwin/xserver/XKeycode;
    .param p2, "keysym"    # I

    .line 187
    sget-object v0, Lcom/wuyouwin/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    sget-object v1, Lcom/wuyouwin/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/wuyouwin/xserver/XServer$Lockable;

    filled-new-array {v0, v1}, [Lcom/wuyouwin/xserver/XServer$Lockable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/XServer;->lock([Lcom/wuyouwin/xserver/XServer$Lockable;)Lcom/wuyouwin/xserver/XLock;

    move-result-object v0

    .line 188
    .local v0, "lock":Lcom/wuyouwin/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/wuyouwin/xserver/XServer;->keyboard:Lcom/wuyouwin/xserver/Keyboard;

    iget-byte v2, p1, Lcom/wuyouwin/xserver/XKeycode;->id:B

    invoke-virtual {v1, v2, p2}, Lcom/wuyouwin/xserver/Keyboard;->setKeyPress(BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V

    .line 190
    .end local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :cond_0
    return-void

    .line 187
    .restart local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public injectKeyRelease(Lcom/wuyouwin/xserver/XKeycode;)V
    .locals 3
    .param p1, "xKeycode"    # Lcom/wuyouwin/xserver/XKeycode;

    .line 193
    sget-object v0, Lcom/wuyouwin/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    sget-object v1, Lcom/wuyouwin/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/wuyouwin/xserver/XServer$Lockable;

    filled-new-array {v0, v1}, [Lcom/wuyouwin/xserver/XServer$Lockable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/XServer;->lock([Lcom/wuyouwin/xserver/XServer$Lockable;)Lcom/wuyouwin/xserver/XLock;

    move-result-object v0

    .line 194
    .local v0, "lock":Lcom/wuyouwin/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/wuyouwin/xserver/XServer;->keyboard:Lcom/wuyouwin/xserver/Keyboard;

    iget-byte v2, p1, Lcom/wuyouwin/xserver/XKeycode;->id:B

    invoke-virtual {v1, v2}, Lcom/wuyouwin/xserver/Keyboard;->setKeyRelease(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V

    .line 196
    .end local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :cond_0
    return-void

    .line 193
    .restart local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public injectPointerButtonPress(Lcom/wuyouwin/xserver/Pointer$Button;)V
    .locals 4
    .param p1, "buttonCode"    # Lcom/wuyouwin/xserver/Pointer$Button;

    .line 165
    sget-object v0, Lcom/wuyouwin/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    sget-object v1, Lcom/wuyouwin/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/wuyouwin/xserver/XServer$Lockable;

    filled-new-array {v0, v1}, [Lcom/wuyouwin/xserver/XServer$Lockable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/XServer;->lock([Lcom/wuyouwin/xserver/XServer$Lockable;)Lcom/wuyouwin/xserver/XLock;

    move-result-object v0

    .line 166
    .local v0, "lock":Lcom/wuyouwin/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/wuyouwin/xserver/Pointer;->setButton(Lcom/wuyouwin/xserver/Pointer$Button;Z)V

    .line 168
    const-class v1, Lcom/wuyouwin/xserver/extensions/XInputExtension;

    invoke-virtual {p0, v1}, Lcom/wuyouwin/xserver/XServer;->getExtension(Ljava/lang/Class;)Lcom/wuyouwin/xserver/extensions/Extension;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/extensions/XInputExtension;

    .line 169
    .local v1, "xInputExtension":Lcom/wuyouwin/xserver/extensions/XInputExtension;
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Pointer$Button;->code()B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/wuyouwin/xserver/extensions/XInputExtension;->sendRawButtonState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 165
    .end local v1    # "xInputExtension":Lcom/wuyouwin/xserver/extensions/XInputExtension;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 170
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V

    .line 171
    .end local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :cond_1
    return-void

    .line 165
    .restart local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v1
.end method

.method public injectPointerButtonRelease(Lcom/wuyouwin/xserver/Pointer$Button;)V
    .locals 4
    .param p1, "buttonCode"    # Lcom/wuyouwin/xserver/Pointer$Button;

    .line 174
    sget-object v0, Lcom/wuyouwin/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    sget-object v1, Lcom/wuyouwin/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/wuyouwin/xserver/XServer$Lockable;

    filled-new-array {v0, v1}, [Lcom/wuyouwin/xserver/XServer$Lockable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/XServer;->lock([Lcom/wuyouwin/xserver/XServer$Lockable;)Lcom/wuyouwin/xserver/XLock;

    move-result-object v0

    .line 175
    .local v0, "lock":Lcom/wuyouwin/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/wuyouwin/xserver/Pointer;->setButton(Lcom/wuyouwin/xserver/Pointer$Button;Z)V

    .line 177
    const-class v1, Lcom/wuyouwin/xserver/extensions/XInputExtension;

    invoke-virtual {p0, v1}, Lcom/wuyouwin/xserver/XServer;->getExtension(Ljava/lang/Class;)Lcom/wuyouwin/xserver/extensions/Extension;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/extensions/XInputExtension;

    .line 178
    .local v1, "xInputExtension":Lcom/wuyouwin/xserver/extensions/XInputExtension;
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/wuyouwin/xserver/Pointer$Button;->code()B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/wuyouwin/xserver/extensions/XInputExtension;->sendRawButtonState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 174
    .end local v1    # "xInputExtension":Lcom/wuyouwin/xserver/extensions/XInputExtension;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 179
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V

    .line 180
    .end local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :cond_1
    return-void

    .line 174
    .restart local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v1
.end method

.method public injectPointerMove(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 149
    sget-object v0, Lcom/wuyouwin/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    sget-object v1, Lcom/wuyouwin/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/wuyouwin/xserver/XServer$Lockable;

    filled-new-array {v0, v1}, [Lcom/wuyouwin/xserver/XServer$Lockable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/XServer;->lock([Lcom/wuyouwin/xserver/XServer$Lockable;)Lcom/wuyouwin/xserver/XLock;

    move-result-object v0

    .line 150
    .local v0, "lock":Lcom/wuyouwin/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    invoke-virtual {v1, p1, p2}, Lcom/wuyouwin/xserver/Pointer;->setPosition(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V

    .line 152
    .end local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :cond_0
    return-void

    .line 149
    .restart local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public injectPointerMoveDelta(II)V
    .locals 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 155
    sget-object v0, Lcom/wuyouwin/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/wuyouwin/xserver/XServer$Lockable;

    sget-object v1, Lcom/wuyouwin/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/wuyouwin/xserver/XServer$Lockable;

    filled-new-array {v0, v1}, [Lcom/wuyouwin/xserver/XServer$Lockable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wuyouwin/xserver/XServer;->lock([Lcom/wuyouwin/xserver/XServer$Lockable;)Lcom/wuyouwin/xserver/XLock;

    move-result-object v0

    .line 156
    .local v0, "lock":Lcom/wuyouwin/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    iget-object v2, p0, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    invoke-virtual {v2}, Lcom/wuyouwin/xserver/Pointer;->getX()S

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    invoke-virtual {v3}, Lcom/wuyouwin/xserver/Pointer;->getY()S

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/wuyouwin/xserver/Pointer;->setPosition(II)V

    .line 157
    iget-object v1, p0, Lcom/wuyouwin/xserver/XServer;->pointer:Lcom/wuyouwin/xserver/Pointer;

    invoke-virtual {v1}, Lcom/wuyouwin/xserver/Pointer;->clampPosition()V

    .line 159
    const-class v1, Lcom/wuyouwin/xserver/extensions/XInputExtension;

    invoke-virtual {p0, v1}, Lcom/wuyouwin/xserver/XServer;->getExtension(Ljava/lang/Class;)Lcom/wuyouwin/xserver/extensions/Extension;

    move-result-object v1

    check-cast v1, Lcom/wuyouwin/xserver/extensions/XInputExtension;

    .line 160
    .local v1, "xInputExtension":Lcom/wuyouwin/xserver/extensions/XInputExtension;
    if-eqz v1, :cond_0

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/wuyouwin/xserver/extensions/XInputExtension;->sendRawMotion(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 155
    .end local v1    # "xInputExtension":Lcom/wuyouwin/xserver/extensions/XInputExtension;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 161
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V

    .line 162
    .end local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :cond_1
    return-void

    .line 155
    .restart local v0    # "lock":Lcom/wuyouwin/xserver/XLock;
    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lcom/wuyouwin/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v1
.end method

.method public isRelativeMouseMovement()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/wuyouwin/xserver/XServer;->relativeMouseMovement:Z

    return v0
.end method

.method public lock(Lcom/wuyouwin/xserver/XServer$Lockable;)Lcom/wuyouwin/xserver/XLock;
    .locals 2
    .param p1, "lockable"    # Lcom/wuyouwin/xserver/XServer$Lockable;

    .line 132
    new-instance v0, Lcom/wuyouwin/xserver/XServer$SingleXLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/wuyouwin/xserver/XServer$SingleXLock;-><init>(Lcom/wuyouwin/xserver/XServer;Lcom/wuyouwin/xserver/XServer$Lockable;Lcom/wuyouwin/xserver/XServer$1;)V

    return-object v0
.end method

.method public varargs lock([Lcom/wuyouwin/xserver/XServer$Lockable;)Lcom/wuyouwin/xserver/XLock;
    .locals 2
    .param p1, "lockables"    # [Lcom/wuyouwin/xserver/XServer$Lockable;

    .line 136
    new-instance v0, Lcom/wuyouwin/xserver/XServer$MultiXLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/wuyouwin/xserver/XServer$MultiXLock;-><init>(Lcom/wuyouwin/xserver/XServer;[Lcom/wuyouwin/xserver/XServer$Lockable;Lcom/wuyouwin/xserver/XServer$1;)V

    return-object v0
.end method

.method public lockAll()Lcom/wuyouwin/xserver/XLock;
    .locals 3

    .line 140
    new-instance v0, Lcom/wuyouwin/xserver/XServer$MultiXLock;

    invoke-static {}, Lcom/wuyouwin/xserver/XServer$Lockable;->values()[Lcom/wuyouwin/xserver/XServer$Lockable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/wuyouwin/xserver/XServer$MultiXLock;-><init>(Lcom/wuyouwin/xserver/XServer;[Lcom/wuyouwin/xserver/XServer$Lockable;Lcom/wuyouwin/xserver/XServer$1;)V

    return-object v0
.end method

.method public setRelativeMouseMovement(Z)V
    .locals 0
    .param p1, "relativeMouseMovement"    # Z

    .line 73
    nop

    .line 74
    iput-boolean p1, p0, Lcom/wuyouwin/xserver/XServer;->relativeMouseMovement:Z

    .line 75
    return-void
.end method

.method public setRenderer(Lcom/wuyouwin/renderer/GLRenderer;)V
    .locals 0
    .param p1, "renderer"    # Lcom/wuyouwin/renderer/GLRenderer;

    .line 82
    iput-object p1, p0, Lcom/wuyouwin/xserver/XServer;->renderer:Lcom/wuyouwin/renderer/GLRenderer;

    .line 83
    return-void
.end method

.method public setSHMSegmentManager(Lcom/wuyouwin/xserver/SHMSegmentManager;)V
    .locals 0
    .param p1, "shmSegmentManager"    # Lcom/wuyouwin/xserver/SHMSegmentManager;

    .line 98
    iput-object p1, p0, Lcom/wuyouwin/xserver/XServer;->shmSegmentManager:Lcom/wuyouwin/xserver/SHMSegmentManager;

    .line 99
    return-void
.end method

.method public setWinHandler(Lcom/wuyouwin/winhandler/WinHandler;)V
    .locals 0
    .param p1, "winHandler"    # Lcom/wuyouwin/winhandler/WinHandler;

    .line 90
    iput-object p1, p0, Lcom/wuyouwin/xserver/XServer;->winHandler:Lcom/wuyouwin/winhandler/WinHandler;

    .line 91
    return-void
.end method
