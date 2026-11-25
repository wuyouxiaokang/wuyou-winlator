.class public abstract Lcom/wuyouwin/xserver/Atom;
.super Ljava/lang/Object;
.source "Atom.java"


# static fields
.field private static final atoms:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 77

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    const-string v75, "_NET_WM_SURFACE"

    const-string v76, "_NET_WM_GPU_INFO"

    const/4 v1, 0x0

    const-string v2, "PRIMARY"

    const-string v3, "SECONDARY"

    const-string v4, "ARC"

    const-string v5, "ATOM"

    const-string v6, "BITMAP"

    const-string v7, "CARDINAL"

    const-string v8, "COLORMAP"

    const-string v9, "CURSOR"

    const-string v10, "CUT_BUFFER0"

    const-string v11, "CUT_BUFFER1"

    const-string v12, "CUT_BUFFER2"

    const-string v13, "CUT_BUFFER3"

    const-string v14, "CUT_BUFFER4"

    const-string v15, "CUT_BUFFER5"

    const-string v16, "CUT_BUFFER6"

    const-string v17, "CUT_BUFFER7"

    const-string v18, "DRAWABLE"

    const-string v19, "FONT"

    const-string v20, "INTEGER"

    const-string v21, "PIXMAP"

    const-string v22, "POINT"

    const-string v23, "RECTANGLE"

    const-string v24, "RESOURCE_MANAGER"

    const-string v25, "RGB_COLOR_MAP"

    const-string v26, "RGB_BEST_MAP"

    const-string v27, "RGB_BLUE_MAP"

    const-string v28, "RGB_DEFAULT_MAP"

    const-string v29, "RGB_GRAY_MAP"

    const-string v30, "RGB_GREEN_MAP"

    const-string v31, "RGB_RED_MAP"

    const-string v32, "STRING"

    const-string v33, "VISUALID"

    const-string v34, "WINDOW"

    const-string v35, "WM_COMMAND"

    const-string v36, "WM_HINTS"

    const-string v37, "WM_CLIENT_MACHINE"

    const-string v38, "WM_ICON_NAME"

    const-string v39, "WM_ICON_SIZE"

    const-string v40, "WM_NAME"

    const-string v41, "WM_NORMAL_HINTS"

    const-string v42, "WM_SIZE_HINTS"

    const-string v43, "WM_ZOOM_HINTS"

    const-string v44, "MIN_SPACE"

    const-string v45, "NORM_SPACE"

    const-string v46, "MAX_SPACE"

    const-string v47, "END_SPACE"

    const-string v48, "SUPERSC.LPT_X"

    const-string v49, "SUPERSC.LPT_Y"

    const-string v50, "SUBSC.LPT_X"

    const-string v51, "SUBSC.LPT_Y"

    const-string v52, "UNDERLINE_POSITION"

    const-string v53, "UNDERLINE_THICKNESS"

    const-string v54, "STRIKEOUT_ASCENT"

    const-string v55, "STRIKEOUT_DESCENT"

    const-string v56, "ITALIC_ANGLE"

    const-string v57, "X_HEIGHT"

    const-string v58, "QUAD_WIDTH"

    const-string v59, "WEIGHT"

    const-string v60, "POINT_SIZE"

    const-string v61, "RESOLUTION"

    const-string v62, "COPYRIGHT"

    const-string v63, "NOTICE"

    const-string v64, "FONT_NAME"

    const-string v65, "FAMILY_NAME"

    const-string v66, "FULL_NAME"

    const-string v67, "CAP_HEIGHT"

    const-string v68, "WM_CLASS"

    const-string v69, "WM_TRANSIENT_FOR"

    const-string v70, "_MOTIF_WM_HINTS"

    const-string v71, "_NET_WM_PID"

    const-string v72, "_NET_WM_WINDOW_TYPE"

    const-string v73, "_NET_WM_HWND"

    const-string v74, "_NET_WM_WOW64"

    filled-new-array/range {v1 .. v76}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/wuyouwin/xserver/Atom;->atoms:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getId(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    const-class v0, Lcom/wuyouwin/xserver/Atom;

    monitor-enter v0

    .line 90
    if-nez p0, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v2, Lcom/wuyouwin/xserver/Atom;->atoms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/wuyouwin/xserver/Atom;->atoms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    .end local p0    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 91
    .restart local v1    # "i":I
    .restart local p0    # "name":Ljava/lang/String;
    :cond_2
    nop

    .line 92
    .end local v1    # "i":I
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 89
    .end local p0    # "name":Ljava/lang/String;
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getName(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    const-class v0, Lcom/wuyouwin/xserver/Atom;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lcom/wuyouwin/xserver/Atom;->atoms:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .end local p0    # "id":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized internAtom(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    const-class v0, Lcom/wuyouwin/xserver/Atom;

    monitor-enter v0

    .line 96
    :try_start_0
    invoke-static {p0}, Lcom/wuyouwin/xserver/Atom;->getId(Ljava/lang/String;)I

    move-result v1

    .line 97
    .local v1, "id":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 98
    sget-object v2, Lcom/wuyouwin/xserver/Atom;->atoms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v2

    .line 99
    sget-object v2, Lcom/wuyouwin/xserver/Atom;->atoms:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 95
    .end local v1    # "id":I
    .end local p0    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 101
    .restart local v1    # "id":I
    .restart local p0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit v0

    return v1

    .line 95
    .end local v1    # "id":I
    .end local p0    # "name":Ljava/lang/String;
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isValid(I)Z
    .locals 2
    .param p0, "id"    # I

    const-class v0, Lcom/wuyouwin/xserver/Atom;

    monitor-enter v0

    .line 105
    if-lez p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/wuyouwin/xserver/Atom;->atoms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local p0    # "id":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .restart local p0    # "id":I
    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1
.end method
