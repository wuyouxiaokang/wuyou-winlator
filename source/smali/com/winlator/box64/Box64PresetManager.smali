.class public abstract Lcom/winlator/box64/Box64PresetManager;
.super Ljava/lang/Object;
.source "Box64PresetManager.java"


# direct methods
.method public static synthetic $r8$lambda$lTv5qc9XgyPaxh6mrIEBpMU-MT0([I[Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/winlator/box64/Box64PresetManager;->lambda$customPresetsIterator$0([I[Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static customPresetsIterator(Landroid/content/Context;)Ljava/lang/Iterable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 101
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "box64_custom_presets"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "customPresetsStr":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "customPresets":[Ljava/lang/String;
    const/4 v3, 0x0

    filled-new-array {v3}, [I

    move-result-object v3

    .line 105
    .local v3, "index":[I
    new-instance v4, Lcom/winlator/box64/Box64PresetManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v2, v1}, Lcom/winlator/box64/Box64PresetManager$$ExternalSyntheticLambda0;-><init>([I[Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static duplicatePreset(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .line 150
    invoke-static {p0}, Lcom/winlator/box64/Box64PresetManager;->getPresets(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 151
    .local v0, "presets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/box64/Box64Preset;>;"
    const/4 v1, 0x0

    .line 152
    .local v1, "originPreset":Lcom/winlator/box64/Box64Preset;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/box64/Box64Preset;

    .line 153
    .local v3, "preset":Lcom/winlator/box64/Box64Preset;
    iget-object v4, v3, Lcom/winlator/box64/Box64Preset;->id:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    move-object v1, v3

    .line 155
    goto :goto_1

    .line 153
    :cond_0
    nop

    .line 157
    .end local v3    # "preset":Lcom/winlator/box64/Box64Preset;
    goto :goto_0

    .line 158
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    return-void

    .line 161
    :cond_2
    const/4 v2, 0x1

    .line 162
    .local v2, "i":I
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/winlator/box64/Box64Preset;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "newName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 164
    .local v4, "found":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/winlator/box64/Box64Preset;

    .line 165
    .local v6, "preset":Lcom/winlator/box64/Box64Preset;
    iget-object v7, v6, Lcom/winlator/box64/Box64Preset;->name:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 166
    const/4 v4, 0x1

    .line 167
    goto :goto_4

    .line 165
    :cond_3
    nop

    .line 169
    .end local v6    # "preset":Lcom/winlator/box64/Box64Preset;
    goto :goto_3

    .line 170
    :cond_4
    :goto_4
    nop

    nop

    if-nez v4, :cond_5

    .line 173
    .end local v2    # "i":I
    .end local v4    # "found":Z
    iget-object v2, v1, Lcom/winlator/box64/Box64Preset;->id:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/winlator/box64/Box64PresetManager;->getEnvVars(Landroid/content/Context;Ljava/lang/String;)Lcom/winlator/core/EnvVars;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {p0, v4, v3, v2}, Lcom/winlator/box64/Box64PresetManager;->editPreset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/winlator/core/EnvVars;)V

    .line 174
    return-void

    .line 161
    .restart local v2    # "i":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static editPreset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/winlator/core/EnvVars;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "envVars"    # Lcom/winlator/core/EnvVars;

    .line 127
    const-string v0, "box64_custom_presets"

    .line 128
    .local v0, "key":Ljava/lang/String;
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 129
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "box64_custom_presets"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "customPresetsStr":Ljava/lang/String;
    const-string v5, ","

    const-string v6, "|"

    if-eqz p1, :cond_2

    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "customPresets":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v3

    if-ge v7, v8, :cond_1

    .line 134
    aget-object v8, v3, v7

    const-string v9, "\\|"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "preset":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 136
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/winlator/core/EnvVars;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v7

    .line 137
    goto :goto_1

    .line 135
    :cond_0
    nop

    .line 133
    .end local v8    # "preset":[Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 140
    .end local v7    # "i":I
    :cond_1
    :goto_1
    invoke-static {v5, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .end local v4    # "customPresetsStr":Ljava/lang/String;
    .local v3, "customPresetsStr":Ljava/lang/String;
    goto :goto_2

    .line 143
    .end local v3    # "customPresetsStr":Ljava/lang/String;
    .restart local v4    # "customPresetsStr":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CUSTOM-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/winlator/box64/Box64PresetManager;->getNextPresetId(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/winlator/core/EnvVars;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "preset":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    move-object v3, v5

    :cond_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .end local v4    # "customPresetsStr":Ljava/lang/String;
    .end local v6    # "preset":Ljava/lang/String;
    .restart local v3    # "customPresetsStr":Ljava/lang/String;
    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    return-void
.end method

.method public static getEnvVars(Landroid/content/Context;Ljava/lang/String;)Lcom/winlator/core/EnvVars;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .line 19
    move-object/from16 v0, p1

    new-instance v1, Lcom/winlator/core/EnvVars;

    invoke-direct {v1}, Lcom/winlator/core/EnvVars;-><init>()V

    .line 21
    .local v1, "envVars":Lcom/winlator/core/EnvVars;
    const-string v2, "STABILITY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "128"

    const-string v4, "BOX64_DYNAREC_WEAKBARRIER"

    const-string v5, "BOX64_DYNAREC_NATIVEFLAGS"

    const-string v6, "BOX64_DYNAREC_WAIT"

    const-string v7, "BOX64_DYNAREC_CALLRET"

    const-string v8, "BOX64_DYNAREC_FORWARD"

    const-string v9, "BOX64_DYNAREC_STRONGMEM"

    const-string v10, "BOX64_DYNAREC_BIGBLOCK"

    const-string v11, "BOX64_DYNAREC_X87DOUBLE"

    const-string v12, "BOX64_DYNAREC_FASTROUND"

    const-string v13, "BOX64_DYNAREC_FASTNAN"

    const-string v14, "BOX64_DYNAREC_SAFEFLAGS"

    const-string v15, "2"

    const-string v0, "1"

    move-object/from16 v16, v4

    const-string v4, "0"

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v1, v14, v15}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 23
    invoke-virtual {v1, v13, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 24
    invoke-virtual {v1, v12, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 25
    invoke-virtual {v1, v11, v0}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 26
    invoke-virtual {v1, v10, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 27
    invoke-virtual {v1, v9, v15}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 28
    invoke-virtual {v1, v8, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 29
    invoke-virtual {v1, v7, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 30
    invoke-virtual {v1, v6, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 31
    invoke-virtual {v1, v5, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 32
    move-object/from16 v2, v16

    invoke-virtual {v1, v2, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    move-object/from16 v2, p1

    goto/16 :goto_1

    .line 34
    :cond_0
    move-object/from16 v2, v16

    move-object/from16 v16, v0

    const-string v0, "CONSERVATIVE"

    move-object/from16 v17, v2

    move-object/from16 v2, p1

    move-object/from16 v19, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v1, v14, v15}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 36
    invoke-virtual {v1, v13, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 37
    invoke-virtual {v1, v12, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 38
    invoke-virtual {v1, v11, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 39
    invoke-virtual {v1, v10, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 40
    invoke-virtual {v1, v9, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 41
    invoke-virtual {v1, v8, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 42
    invoke-virtual {v1, v7, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 43
    invoke-virtual {v1, v6, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 44
    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 45
    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    goto/16 :goto_1

    .line 47
    :cond_1
    move-object/from16 v0, v16

    move-object/from16 v18, v17

    const-string v0, "INTERMEDIATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {v1, v14, v15}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 49
    invoke-virtual {v1, v13, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 50
    invoke-virtual {v1, v12, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 51
    invoke-virtual {v1, v11, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 52
    invoke-virtual {v1, v10, v15}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 53
    invoke-virtual {v1, v9, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 54
    invoke-virtual {v1, v8, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 55
    invoke-virtual {v1, v7, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 56
    invoke-virtual {v1, v6, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 57
    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 58
    move-object/from16 v3, v18

    invoke-virtual {v1, v3, v15}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    goto :goto_1

    .line 60
    :cond_2
    move-object/from16 v0, v16

    move-object/from16 v3, v18

    move-object/from16 v16, v3

    const-string v3, "PERFORMANCE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    invoke-virtual {v1, v14, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 62
    invoke-virtual {v1, v13, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 63
    invoke-virtual {v1, v12, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 64
    invoke-virtual {v1, v11, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 65
    const-string v3, "3"

    invoke-virtual {v1, v10, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 66
    invoke-virtual {v1, v9, v4}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 67
    const-string v3, "512"

    invoke-virtual {v1, v8, v3}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 68
    invoke-virtual {v1, v7, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 69
    invoke-virtual {v1, v6, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 70
    invoke-virtual {v1, v0, v5}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    .line 71
    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v15}, Lcom/winlator/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/winlator/core/EnvVars;

    goto :goto_1

    .line 73
    :cond_3
    const-string v0, "CUSTOM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    invoke-static/range {p0 .. p0}, Lcom/winlator/box64/Box64PresetManager;->customPresetsIterator(Landroid/content/Context;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 75
    .local v3, "preset":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 76
    const/4 v0, 0x2

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Lcom/winlator/core/EnvVars;->putAll(Ljava/lang/String;)V

    .line 77
    goto :goto_1

    .line 75
    :cond_4
    nop

    .line 79
    .end local v3    # "preset":[Ljava/lang/String;
    goto :goto_0

    .line 82
    :cond_5
    :goto_1
    return-object v1
.end method

.method public static getNextPresetId(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "maxId":I
    invoke-static {p0}, Lcom/winlator/box64/Box64PresetManager;->customPresetsIterator(Landroid/content/Context;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 121
    .local v2, "preset":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "CUSTOM-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 122
    .end local v2    # "preset":[Ljava/lang/String;
    goto :goto_0

    .line 123
    :cond_0
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public static getPreset(Landroid/content/Context;Ljava/lang/String;)Lcom/winlator/box64/Box64Preset;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .line 96
    invoke-static {p0}, Lcom/winlator/box64/Box64PresetManager;->getPresets(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/box64/Box64Preset;

    .local v1, "preset":Lcom/winlator/box64/Box64Preset;
    iget-object v2, v1, Lcom/winlator/box64/Box64Preset;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .end local v1    # "preset":Lcom/winlator/box64/Box64Preset;
    :cond_0
    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPresets(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "presets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/box64/Box64Preset;>;"
    new-instance v1, Lcom/winlator/box64/Box64Preset;

    const v2, 0x7f100175

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "STABILITY"

    invoke-direct {v1, v3, v2}, Lcom/winlator/box64/Box64Preset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Lcom/winlator/box64/Box64Preset;

    const v2, 0x7f100057

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CONSERVATIVE"

    invoke-direct {v1, v3, v2}, Lcom/winlator/box64/Box64Preset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Lcom/winlator/box64/Box64Preset;

    const v2, 0x7f1000d8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "INTERMEDIATE"

    invoke-direct {v1, v3, v2}, Lcom/winlator/box64/Box64Preset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lcom/winlator/box64/Box64Preset;

    const v2, 0x7f100147

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PERFORMANCE"

    invoke-direct {v1, v3, v2}, Lcom/winlator/box64/Box64Preset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {p0}, Lcom/winlator/box64/Box64PresetManager;->customPresetsIterator(Landroid/content/Context;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .local v2, "preset":[Ljava/lang/String;
    new-instance v3, Lcom/winlator/box64/Box64Preset;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {v3, v4, v5}, Lcom/winlator/box64/Box64Preset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v2    # "preset":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;
    .locals 3
    .param p0, "spinner"    # Landroid/widget/Spinner;

    .line 208
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 209
    .local v0, "adapter":Landroid/widget/SpinnerAdapter;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 210
    .local v1, "selectedPosition":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 211
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/box64/Box64Preset;

    iget-object v2, v2, Lcom/winlator/box64/Box64Preset;->id:Ljava/lang/String;

    return-object v2

    .line 213
    :cond_0
    const-string v2, "PERFORMANCE"

    return-object v2
.end method

.method private static synthetic lambda$customPresetsIterator$0([I[Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p0, "index"    # [I
    .param p1, "customPresets"    # [Ljava/lang/String;
    .param p2, "customPresetsStr"    # Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/winlator/box64/Box64PresetManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/winlator/box64/Box64PresetManager$1;-><init>([I[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static loadSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 5
    .param p0, "spinner"    # Landroid/widget/Spinner;
    .param p1, "selectedId"    # Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 193
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/winlator/box64/Box64PresetManager;->getPresets(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 195
    .local v1, "presets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/box64/Box64Preset;>;"
    const/4 v2, 0x0

    .line 196
    .local v2, "selectedPosition":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 197
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/winlator/box64/Box64Preset;

    iget-object v4, v4, Lcom/winlator/box64/Box64Preset;->id:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    move v2, v3

    .line 199
    goto :goto_1

    .line 196
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    .end local v3    # "i":I
    :cond_1
    :goto_1
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-direct {v3, v0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 204
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 205
    return-void
.end method

.method public static removePreset(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .line 177
    const-string v0, "box64_custom_presets"

    .line 178
    .local v0, "key":Ljava/lang/String;
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 179
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "box64_custom_presets"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "oldCustomPresetsStr":Ljava/lang/String;
    const-string v5, ""

    .line 182
    .local v5, "newCustomPresetsStr":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, "customPresets":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v7

    if-ge v8, v9, :cond_2

    .line 184
    aget-object v9, v7, v8

    const-string v10, "\\|"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 185
    .local v9, "preset":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    move-object v11, v6

    goto :goto_1

    :cond_0
    move-object v11, v3

    :goto_1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v7, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 183
    .end local v9    # "preset":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 188
    .end local v8    # "i":I
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    return-void
.end method
