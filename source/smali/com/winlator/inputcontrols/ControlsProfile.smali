.class public Lcom/winlator/inputcontrols/ControlsProfile;
.super Ljava/lang/Object;
.source "ControlsProfile.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/winlator/inputcontrols/GamepadSlot;


# instance fields
.field private final context:Landroid/content/Context;

.field private final controllers:Ljava/util/ArrayList;

.field private controllersLoaded:Z

.field private cursorSpeed:F

.field private disableMouseInput:Z

.field private final elements:Ljava/util/ArrayList;

.field private elementsLoaded:Z

.field private gamepadState:Lcom/winlator/inputcontrols/GamepadState;

.field private gamepadVibration:Lcom/winlator/inputcontrols/GamepadVibration;

.field public final id:I

.field private final immutableElements:Ljava/util/List;

.field private name:Ljava/lang/String;

.field private virtualGamepad:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->cursorSpeed:F

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->disableMouseInput:Z

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/winlator/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    .line 27
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/inputcontrols/ControlsProfile;->immutableElements:Ljava/util/List;

    .line 28
    iput-boolean v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->elementsLoaded:Z

    .line 29
    iput-boolean v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllersLoaded:Z

    .line 30
    iput-boolean v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->virtualGamepad:Z

    .line 36
    iput-object p1, p0, Lcom/winlator/inputcontrols/ControlsProfile;->context:Landroid/content/Context;

    .line 37
    iput p2, p0, Lcom/winlator/inputcontrols/ControlsProfile;->id:I

    .line 38
    return-void
.end method

.method public static getProfileFile(Landroid/content/Context;I)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 167
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/winlator/inputcontrols/InputControlsManager;->getProfilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controls-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".icp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addController(Ljava/lang/String;)Lcom/winlator/inputcontrols/ExternalController;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 92
    invoke-virtual {p0, p1}, Lcom/winlator/inputcontrols/ControlsProfile;->getController(Ljava/lang/String;)Lcom/winlator/inputcontrols/ExternalController;

    move-result-object v0

    .line 93
    .local v0, "controller":Lcom/winlator/inputcontrols/ExternalController;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/winlator/inputcontrols/ExternalController;->getController(Ljava/lang/String;)Lcom/winlator/inputcontrols/ExternalController;

    move-result-object v2

    move-object v0, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllersLoaded:Z

    .line 95
    return-object v0
.end method

.method public addElement(Lcom/winlator/inputcontrols/ControlElement;)V
    .locals 1
    .param p1, "element"    # Lcom/winlator/inputcontrols/ControlElement;

    .line 171
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->elementsLoaded:Z

    .line 173
    return-void
.end method

.method public compareTo(Lcom/winlator/inputcontrols/ControlsProfile;)I
    .locals 2
    .param p1, "o"    # Lcom/winlator/inputcontrols/ControlsProfile;

    .line 123
    iget v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->id:I

    iget v1, p1, Lcom/winlator/inputcontrols/ControlsProfile;->id:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Lcom/winlator/inputcontrols/ControlsProfile;

    invoke-virtual {p0, p1}, Lcom/winlator/inputcontrols/ControlsProfile;->compareTo(Lcom/winlator/inputcontrols/ControlsProfile;)I

    move-result p1

    return p1
.end method

.method public getController(I)Lcom/winlator/inputcontrols/ExternalController;
    .locals 3
    .param p1, "deviceId"    # I

    .line 110
    iget-boolean v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllersLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/winlator/inputcontrols/ControlsProfile;->loadControllers()Ljava/util/ArrayList;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/inputcontrols/ExternalController;

    .local v1, "controller":Lcom/winlator/inputcontrols/ExternalController;
    invoke-virtual {v1}, Lcom/winlator/inputcontrols/ExternalController;->getDeviceId()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1

    .end local v1    # "controller":Lcom/winlator/inputcontrols/ExternalController;
    :cond_1
    goto :goto_0

    .line 112
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getController(Ljava/lang/String;)Lcom/winlator/inputcontrols/ExternalController;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 104
    iget-boolean v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllersLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/winlator/inputcontrols/ControlsProfile;->loadControllers()Ljava/util/ArrayList;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/inputcontrols/ExternalController;

    .local v1, "controller":Lcom/winlator/inputcontrols/ExternalController;
    invoke-virtual {v1}, Lcom/winlator/inputcontrols/ExternalController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .end local v1    # "controller":Lcom/winlator/inputcontrols/ExternalController;
    :cond_1
    goto :goto_0

    .line 106
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCursorSpeed()F
    .locals 1

    .line 60
    iget v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->cursorSpeed:F

    return v0
.end method

.method public getElements()Ljava/util/List;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->immutableElements:Ljava/util/List;

    return-object v0
.end method

.method public getGamepadState()Lcom/winlator/inputcontrols/GamepadState;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->gamepadState:Lcom/winlator/inputcontrols/GamepadState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/winlator/inputcontrols/GamepadState;

    invoke-direct {v0}, Lcom/winlator/inputcontrols/GamepadState;-><init>()V

    iput-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->gamepadState:Lcom/winlator/inputcontrols/GamepadState;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->gamepadState:Lcom/winlator/inputcontrols/GamepadState;

    return-object v0
.end method

.method public getGamepadVibration()Lcom/winlator/inputcontrols/GamepadVibration;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->gamepadVibration:Lcom/winlator/inputcontrols/GamepadVibration;

    if-nez v0, :cond_0

    new-instance v0, Lcom/winlator/inputcontrols/GamepadVibration;

    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlsProfile;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/winlator/inputcontrols/GamepadVibration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->gamepadVibration:Lcom/winlator/inputcontrols/GamepadVibration;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->gamepadVibration:Lcom/winlator/inputcontrols/GamepadVibration;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()S
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public getVendorId()S
    .locals 1

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public isDisableMouseInput()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->disableMouseInput:Z

    return v0
.end method

.method public isElementsLoaded()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->elementsLoaded:Z

    return v0
.end method

.method public isTemplate()Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->name:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isVirtualGamepad()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->virtualGamepad:Z

    return v0
.end method

.method public loadControllers()Ljava/util/ArrayList;
    .locals 12

    .line 189
    const-string v0, "controllers"

    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 190
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllersLoaded:Z

    .line 192
    iget-object v1, p0, Lcom/winlator/inputcontrols/ControlsProfile;->context:Landroid/content/Context;

    iget v2, p0, Lcom/winlator/inputcontrols/ControlsProfile;->id:I

    invoke-static {v1, v2}, Lcom/winlator/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    .line 193
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    return-object v0

    .line 196
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/winlator/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 197
    .local v2, "profileJSONObject":Lorg/json/JSONObject;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    return-object v0

    .line 218
    .end local v2    # "profileJSONObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 198
    .restart local v2    # "profileJSONObject":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 199
    .local v0, "controllersJSONArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 200
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 201
    .local v4, "controllerJSONObject":Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, "id":Ljava/lang/String;
    new-instance v6, Lcom/winlator/inputcontrols/ExternalController;

    invoke-direct {v6}, Lcom/winlator/inputcontrols/ExternalController;-><init>()V

    .line 203
    .local v6, "controller":Lcom/winlator/inputcontrols/ExternalController;
    invoke-virtual {v6, v5}, Lcom/winlator/inputcontrols/ExternalController;->setId(Ljava/lang/String;)V

    .line 204
    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/winlator/inputcontrols/ExternalController;->setName(Ljava/lang/String;)V

    .line 206
    const-string v7, "controllerBindings"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 207
    .local v7, "controllerBindingsJSONArray":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 208
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 209
    .local v9, "controllerBindingJSONObject":Lorg/json/JSONObject;
    new-instance v10, Lcom/winlator/inputcontrols/ExternalControllerBinding;

    invoke-direct {v10}, Lcom/winlator/inputcontrols/ExternalControllerBinding;-><init>()V

    .line 210
    .local v10, "controllerBinding":Lcom/winlator/inputcontrols/ExternalControllerBinding;
    const-string v11, "keyCode"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/winlator/inputcontrols/ExternalControllerBinding;->setKeyCode(I)V

    .line 211
    const-string v11, "binding"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/winlator/inputcontrols/Binding;->fromString(Ljava/lang/String;)Lcom/winlator/inputcontrols/Binding;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/winlator/inputcontrols/ExternalControllerBinding;->setBinding(Lcom/winlator/inputcontrols/Binding;)V

    .line 212
    invoke-virtual {v6, v10}, Lcom/winlator/inputcontrols/ExternalController;->addControllerBinding(Lcom/winlator/inputcontrols/ExternalControllerBinding;)V

    .line 207
    .end local v9    # "controllerBindingJSONObject":Lorg/json/JSONObject;
    .end local v10    # "controllerBinding":Lcom/winlator/inputcontrols/ExternalControllerBinding;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 214
    .end local v8    # "j":I
    iget-object v8, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    nop

    .end local v4    # "controllerJSONObject":Lorg/json/JSONObject;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "controller":Lcom/winlator/inputcontrols/ExternalController;
    .end local v7    # "controllerBindingsJSONArray":Lorg/json/JSONArray;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 216
    .end local v3    # "i":I
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllersLoaded:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0    # "controllersJSONArray":Lorg/json/JSONArray;
    .end local v2    # "profileJSONObject":Lorg/json/JSONObject;
    goto :goto_3

    .line 218
    :goto_2
    nop

    .line 219
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public loadElements(Lcom/winlator/widget/InputControlsView;)V
    .locals 17
    .param p1, "inputControlsView"    # Lcom/winlator/widget/InputControlsView;

    .line 225
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "opacity"

    const-string v3, "orientation"

    const-string v4, "range"

    iget-object v5, v1, Lcom/winlator/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 226
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/winlator/inputcontrols/ControlsProfile;->elementsLoaded:Z

    .line 227
    iput-boolean v5, v1, Lcom/winlator/inputcontrols/ControlsProfile;->virtualGamepad:Z

    .line 229
    iget-object v5, v1, Lcom/winlator/inputcontrols/ControlsProfile;->context:Landroid/content/Context;

    iget v6, v1, Lcom/winlator/inputcontrols/ControlsProfile;->id:I

    invoke-static {v5, v6}, Lcom/winlator/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v5

    .line 230
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    .line 233
    :cond_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/winlator/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 234
    .local v6, "profileJSONObject":Lorg/json/JSONObject;
    const-string v7, "elements"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 235
    .local v7, "elementsJSONArray":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v8, v9, :cond_a

    .line 236
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 238
    .local v9, "elementJSONObject":Lorg/json/JSONObject;
    const/4 v11, 0x0

    .line 239
    .local v11, "element":Lcom/winlator/inputcontrols/ControlElement;
    if-eqz v2, :cond_4

    .line 240
    new-instance v12, Lcom/winlator/inputcontrols/ControlElement;

    invoke-direct {v12, v2}, Lcom/winlator/inputcontrols/ControlElement;-><init>(Lcom/winlator/widget/InputControlsView;)V

    move-object v11, v12

    .line 241
    const-string v12, "type"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/winlator/inputcontrols/ControlElement$Type;->valueOf(Ljava/lang/String;)Lcom/winlator/inputcontrols/ControlElement$Type;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/winlator/inputcontrols/ControlElement;->setType(Lcom/winlator/inputcontrols/ControlElement$Type;)V

    .line 242
    const-string v12, "shape"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/winlator/inputcontrols/ControlElement$Shape;->valueOf(Ljava/lang/String;)Lcom/winlator/inputcontrols/ControlElement$Shape;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/winlator/inputcontrols/ControlElement;->setShape(Lcom/winlator/inputcontrols/ControlElement$Shape;)V

    .line 243
    const-string v12, "toggleSwitch"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/winlator/inputcontrols/ControlElement;->setToggleSwitch(Z)V

    .line 244
    const-string v12, "x"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/widget/InputControlsView;->getMaxWidth()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v12, v14

    double-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/winlator/inputcontrols/ControlElement;->setX(I)V

    .line 245
    const-string v12, "y"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/widget/InputControlsView;->getMaxHeight()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v12, v14

    double-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/winlator/inputcontrols/ControlElement;->setY(I)V

    .line 246
    const-string v12, "scale"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-virtual {v11, v12}, Lcom/winlator/inputcontrols/ControlElement;->setScale(F)V

    .line 247
    const-string v12, "text"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/winlator/inputcontrols/ControlElement;->setText(Ljava/lang/String;)V

    .line 248
    const-string v12, "iconId"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/winlator/inputcontrols/ControlElement;->setIconId(I)V

    .line 249
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/winlator/inputcontrols/ControlElement$Range;->valueOf(Ljava/lang/String;)Lcom/winlator/inputcontrols/ControlElement$Range;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/winlator/inputcontrols/ControlElement;->setRange(Lcom/winlator/inputcontrols/ControlElement$Range;)V

    goto :goto_1

    .line 268
    .end local v6    # "profileJSONObject":Lorg/json/JSONObject;
    .end local v7    # "elementsJSONArray":Lorg/json/JSONArray;
    .end local v8    # "i":I
    .end local v9    # "elementJSONObject":Lorg/json/JSONObject;
    .end local v11    # "element":Lcom/winlator/inputcontrols/ControlElement;
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 250
    .restart local v6    # "profileJSONObject":Lorg/json/JSONObject;
    .restart local v7    # "elementsJSONArray":Lorg/json/JSONArray;
    .restart local v8    # "i":I
    .restart local v9    # "elementJSONObject":Lorg/json/JSONObject;
    .restart local v11    # "element":Lcom/winlator/inputcontrols/ControlElement;
    :cond_1
    :goto_1
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    int-to-byte v12, v12

    invoke-virtual {v11, v12}, Lcom/winlator/inputcontrols/ControlElement;->setOrientation(B)V

    .line 251
    :cond_2
    const-string v12, "mouseMoveMode"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v11, v10}, Lcom/winlator/inputcontrols/ControlElement;->setMouseMoveMode(Z)V

    .line 252
    :cond_3
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-virtual {v11, v12}, Lcom/winlator/inputcontrols/ControlElement;->setOpacity(F)V

    .line 255
    :cond_4
    const/4 v12, 0x1

    .line 256
    .local v12, "hasGamepadBinding":Z
    const-string v13, "bindings"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 257
    .local v13, "bindingsJSONArray":Lorg/json/JSONArray;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_7

    .line 258
    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/winlator/inputcontrols/Binding;->fromString(Ljava/lang/String;)Lcom/winlator/inputcontrols/Binding;

    move-result-object v15

    .line 259
    .local v15, "binding":Lcom/winlator/inputcontrols/Binding;
    if-eqz v11, :cond_5

    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/winlator/inputcontrols/Binding;->fromString(Ljava/lang/String;)Lcom/winlator/inputcontrols/Binding;

    move-result-object v10

    invoke-virtual {v11, v14, v10}, Lcom/winlator/inputcontrols/ControlElement;->setBindingAt(ILcom/winlator/inputcontrols/Binding;)V

    .line 260
    :cond_5
    invoke-virtual {v15}, Lcom/winlator/inputcontrols/Binding;->isGamepad()Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x0

    move v12, v10

    .line 257
    .end local v15    # "binding":Lcom/winlator/inputcontrols/Binding;
    :cond_6
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x1

    goto :goto_2

    :cond_7
    nop

    .line 263
    .end local v14    # "j":I
    iget-boolean v10, v1, Lcom/winlator/inputcontrols/ControlsProfile;->virtualGamepad:Z

    if-nez v10, :cond_8

    if-eqz v12, :cond_8

    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/winlator/inputcontrols/ControlsProfile;->virtualGamepad:Z

    .line 264
    :cond_8
    if-eqz v11, :cond_9

    iget-object v10, v1, Lcom/winlator/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v9    # "elementJSONObject":Lorg/json/JSONObject;
    .end local v11    # "element":Lcom/winlator/inputcontrols/ControlElement;
    .end local v12    # "hasGamepadBinding":Z
    .end local v13    # "bindingsJSONArray":Lorg/json/JSONArray;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_a
    nop

    .line 266
    .end local v8    # "i":I
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/winlator/inputcontrols/ControlsProfile;->elementsLoaded:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v6    # "profileJSONObject":Lorg/json/JSONObject;
    .end local v7    # "elementsJSONArray":Lorg/json/JSONArray;
    goto :goto_4

    .line 268
    :goto_3
    nop

    .line 269
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 271
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4
    return-void
.end method

.method public removeController(Lcom/winlator/inputcontrols/ExternalController;)V
    .locals 1
    .param p1, "controller"    # Lcom/winlator/inputcontrols/ExternalController;

    .line 99
    iget-boolean v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllersLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/winlator/inputcontrols/ControlsProfile;->loadControllers()Ljava/util/ArrayList;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public removeElement(Lcom/winlator/inputcontrols/ControlElement;)V
    .locals 1
    .param p1, "element"    # Lcom/winlator/inputcontrols/ControlElement;

    .line 176
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->elementsLoaded:Z

    .line 178
    return-void
.end method

.method public save()V
    .locals 8

    .line 131
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->context:Landroid/content/Context;

    iget v1, p0, Lcom/winlator/inputcontrols/ControlsProfile;->id:I

    invoke-static {v0, v1}, Lcom/winlator/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    .line 134
    .local v0, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 135
    .local v1, "data":Lorg/json/JSONObject;
    const-string v2, "id"

    iget v3, p0, Lcom/winlator/inputcontrols/ControlsProfile;->id:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    const-string v2, "name"

    iget-object v3, p0, Lcom/winlator/inputcontrols/ControlsProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v2, "cursorSpeed"

    iget v3, p0, Lcom/winlator/inputcontrols/ControlsProfile;->cursorSpeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    iget-boolean v2, p0, Lcom/winlator/inputcontrols/ControlsProfile;->disableMouseInput:Z

    if-eqz v2, :cond_0

    const-string v2, "disableMouseInput"

    iget-boolean v3, p0, Lcom/winlator/inputcontrols/ControlsProfile;->disableMouseInput:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 163
    .end local v1    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto/16 :goto_5

    .line 140
    .restart local v1    # "data":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 141
    .local v2, "elementsJSONArray":Lorg/json/JSONArray;
    iget-boolean v3, p0, Lcom/winlator/inputcontrols/ControlsProfile;->elementsLoaded:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "elements"

    if-nez v3, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/winlator/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    .local v3, "profileJSONObject":Lorg/json/JSONObject;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move-object v2, v5

    .line 144
    .end local v3    # "profileJSONObject":Lorg/json/JSONObject;
    goto :goto_2

    .line 145
    :cond_1
    iget-object v3, p0, Lcom/winlator/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/winlator/inputcontrols/ControlElement;

    .local v5, "element":Lcom/winlator/inputcontrols/ControlElement;
    invoke-virtual {v5}, Lcom/winlator/inputcontrols/ControlElement;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 146
    .end local v5    # "element":Lcom/winlator/inputcontrols/ControlElement;
    :cond_2
    :goto_2
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 149
    .local v3, "controllersJSONArray":Lorg/json/JSONArray;
    iget-boolean v4, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllersLoaded:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "controllers"

    if-nez v4, :cond_4

    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 150
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/winlator/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    .local v4, "profileJSONObject":Lorg/json/JSONObject;
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    nop

    if-eqz v6, :cond_3

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object v3, v6

    .line 152
    .end local v4    # "profileJSONObject":Lorg/json/JSONObject;
    :cond_3
    goto :goto_4

    .line 154
    :cond_4
    iget-object v4, p0, Lcom/winlator/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/winlator/inputcontrols/ExternalController;

    .line 155
    .local v6, "controller":Lcom/winlator/inputcontrols/ExternalController;
    invoke-virtual {v6}, Lcom/winlator/inputcontrols/ExternalController;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v7

    .line 156
    .local v7, "controllerJSONObject":Lorg/json/JSONObject;
    if-eqz v7, :cond_5

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 157
    .end local v6    # "controller":Lcom/winlator/inputcontrols/ExternalController;
    .end local v7    # "controllerJSONObject":Lorg/json/JSONObject;
    :cond_5
    goto :goto_3

    .line 159
    :cond_6
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    :cond_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/winlator/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 163
    nop

    .line 164
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "elementsJSONArray":Lorg/json/JSONArray;
    .end local v3    # "controllersJSONArray":Lorg/json/JSONArray;
    :goto_5
    return-void
.end method

.method public setCursorSpeed(F)V
    .locals 0
    .param p1, "cursorSpeed"    # F

    .line 64
    iput p1, p0, Lcom/winlator/inputcontrols/ControlsProfile;->cursorSpeed:F

    .line 65
    return-void
.end method

.method public setDisableMouseInput(Z)V
    .locals 0
    .param p1, "disableMouseInput"    # Z

    .line 72
    iput-boolean p1, p0, Lcom/winlator/inputcontrols/ControlsProfile;->disableMouseInput:Z

    .line 73
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/winlator/inputcontrols/ControlsProfile;->name:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/winlator/inputcontrols/ControlsProfile;->name:Ljava/lang/String;

    return-object v0
.end method
