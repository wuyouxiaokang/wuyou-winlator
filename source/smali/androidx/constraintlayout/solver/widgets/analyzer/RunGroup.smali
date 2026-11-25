.class Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;
.super Ljava/lang/Object;
.source "RunGroup.java"


# static fields
.field public static index:I


# instance fields
.field direction:I

.field public dual:Z

.field firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

.field groupIndex:I

.field lastRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

.field public position:I

.field runs:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)V
    .locals 2
    .param p1, "run"    # Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    .param p2, "dir"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->position:I

    .line 34
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->dual:Z

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 37
    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->runs:Ljava/util/ArrayList;

    .line 40
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->groupIndex:I

    .line 44
    sget v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->index:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->groupIndex:I

    .line 45
    sget v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->index:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->index:I

    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 47
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 48
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->direction:I

    .line 49
    return-void
.end method

.method private traverseEnd(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J
    .locals 10
    .param p1, "node"    # Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .param p2, "startPosition"    # J

    .line 89
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 90
    .local v0, "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;

    if-eqz v1, :cond_0

    .line 91
    return-wide p2

    .line 93
    :cond_0
    move-wide v1, p2

    .line 97
    .local v1, "position":J
    iget-object v3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 98
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 99
    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 100
    .local v5, "dependency":Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;
    instance-of v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v6, :cond_2

    .line 101
    move-object v6, v5

    check-cast v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 102
    .local v6, "nextNode":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    if-ne v7, v0, :cond_1

    .line 104
    goto :goto_1

    .line 106
    :cond_1
    iget v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    invoke-direct {p0, v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v7

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 98
    .end local v5    # "dependency":Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;
    .end local v6    # "nextNode":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 110
    .end local v4    # "i":I
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-ne p1, v4, :cond_4

    .line 112
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v4

    .line 113
    .local v4, "dimension":J
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    sub-long v7, p2, v4

    invoke-direct {p0, v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 114
    sub-long v6, p2, v4

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 117
    .end local v4    # "dimension":J
    :cond_4
    return-wide v1
.end method

.method private traverseStart(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J
    .locals 10
    .param p1, "node"    # Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .param p2, "startPosition"    # J

    .line 57
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 58
    .local v0, "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;

    if-eqz v1, :cond_0

    .line 59
    return-wide p2

    .line 61
    :cond_0
    move-wide v1, p2

    .line 65
    .local v1, "position":J
    iget-object v3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 66
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 67
    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 68
    .local v5, "dependency":Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;
    instance-of v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v6, :cond_2

    .line 69
    move-object v6, v5

    check-cast v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 70
    .local v6, "nextNode":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    if-ne v7, v0, :cond_1

    .line 72
    goto :goto_1

    .line 74
    :cond_1
    iget v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    invoke-direct {p0, v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v7

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 66
    .end local v5    # "dependency":Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;
    .end local v6    # "nextNode":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 78
    .end local v4    # "i":I
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-ne p1, v4, :cond_4

    .line 80
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v4

    .line 81
    .local v4, "dimension":J
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    add-long v7, p2, v4

    invoke-direct {p0, v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 82
    add-long v6, p2, v4

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 85
    .end local v4    # "dimension":J
    :cond_4
    return-wide v1
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V
    .locals 1
    .param p1, "run"    # Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->runs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 54
    return-void
.end method

.method public computeWrapSize(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)J
    .locals 26
    .param p1, "container"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "orientation"    # I

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    instance-of v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_1

    .line 122
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 123
    .local v3, "chainRun":Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;
    iget v6, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->orientation:I

    if-eq v6, v2, :cond_0

    .line 124
    return-wide v4

    .line 123
    :cond_0
    nop

    .line 126
    .end local v3    # "chainRun":Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;
    goto :goto_0

    .line 127
    :cond_1
    if-nez v2, :cond_2

    .line 128
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    instance-of v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    if-nez v3, :cond_3

    .line 129
    return-wide v4

    .line 132
    :cond_2
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    instance-of v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    if-nez v3, :cond_3

    .line 133
    return-wide v4

    .line 137
    :cond_3
    :goto_0
    if-nez v2, :cond_4

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    :goto_1
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    goto :goto_2

    :cond_4
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    goto :goto_1

    .line 138
    .local v3, "containerStart":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    :goto_2
    if-nez v2, :cond_5

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    :goto_3
    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    goto :goto_4

    :cond_5
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    goto :goto_3

    .line 140
    .local v6, "containerEnd":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    :goto_4
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 141
    .local v7, "runWithStartTarget":Z
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 143
    .local v8, "runWithEndTarget":Z
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v9

    .line 145
    .local v9, "dimension":J
    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    .line 146
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v0, v11, v4, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v11

    .line 147
    .local v11, "maxPosition":J
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v0, v13, v4, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v4

    .line 150
    .local v4, "minPosition":J
    sub-long v13, v11, v9

    .line 151
    .local v13, "endGap":J
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v15, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v15, v15, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v15, v15

    move-wide/from16 v16, v11

    .end local v11    # "maxPosition":J
    .local v16, "maxPosition":J
    int-to-long v11, v15

    cmp-long v11, v13, v11

    if-ltz v11, :cond_6

    .line 152
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v11, v11

    add-long/2addr v13, v11

    .line 154
    :cond_6
    neg-long v11, v4

    sub-long/2addr v11, v9

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v15, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v15, v15, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    .end local v3    # "containerStart":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .end local v4    # "minPosition":J
    .local v18, "containerStart":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .local v19, "minPosition":J
    int-to-long v3, v15

    sub-long/2addr v11, v3

    .line 155
    .local v11, "startGap":J
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v3, v3

    cmp-long v3, v11, v3

    if-ltz v3, :cond_7

    .line 156
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v3, v3

    sub-long/2addr v11, v3

    .line 158
    :cond_7
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBiasPercent(I)F

    move-result v3

    .line 159
    .local v3, "bias":F
    const-wide/16 v4, 0x0

    .line 160
    .local v4, "gap":J
    const/4 v15, 0x0

    cmpl-float v15, v3, v15

    const/high16 v21, 0x3f800000    # 1.0f

    if-lez v15, :cond_8

    .line 161
    long-to-float v15, v11

    div-float/2addr v15, v3

    long-to-float v1, v13

    sub-float v22, v21, v3

    div-float v1, v1, v22

    add-float/2addr v15, v1

    float-to-long v4, v15

    .line 164
    :cond_8
    long-to-float v1, v4

    mul-float/2addr v1, v3

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v1, v15

    float-to-long v11, v1

    .line 165
    long-to-float v1, v4

    sub-float v21, v21, v3

    mul-float v1, v1, v21

    add-float/2addr v1, v15

    float-to-long v13, v1

    .line 167
    add-long v21, v11, v9

    add-long v21, v21, v13

    .line 168
    .local v21, "runDimension":J
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v1, v1

    add-long v1, v1, v21

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v15, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v15, v15, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v23, v3

    move-wide/from16 v24, v4

    .end local v3    # "bias":F
    .end local v4    # "gap":J
    .local v23, "bias":F
    .local v24, "gap":J
    int-to-long v3, v15

    sub-long/2addr v1, v3

    .line 170
    .end local v9    # "dimension":J
    .end local v11    # "startGap":J
    .end local v13    # "endGap":J
    .end local v16    # "maxPosition":J
    .end local v19    # "minPosition":J
    .end local v21    # "runDimension":J
    .end local v23    # "bias":F
    .end local v24    # "gap":J
    .local v1, "dimension":J
    goto :goto_5

    .line 145
    .end local v1    # "dimension":J
    .end local v18    # "containerStart":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .local v3, "containerStart":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .restart local v9    # "dimension":J
    :cond_9
    move-object/from16 v18, v3

    .line 170
    .end local v3    # "containerStart":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .restart local v18    # "containerStart":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    if-eqz v7, :cond_a

    .line 171
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v2, v2

    invoke-direct {v0, v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v1

    .line 172
    .local v1, "maxPosition":J
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v3, v3

    add-long/2addr v3, v9

    .line 173
    .local v3, "runDimension":J
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 174
    .end local v3    # "runDimension":J
    .end local v9    # "dimension":J
    .local v1, "dimension":J
    goto :goto_5

    .end local v1    # "dimension":J
    .restart local v9    # "dimension":J
    :cond_a
    if-eqz v8, :cond_b

    .line 175
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v2, v2

    invoke-direct {v0, v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v1

    .line 176
    .local v1, "minPosition":J
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v3, v3

    int-to-long v3, v3

    add-long/2addr v3, v9

    .line 177
    .restart local v3    # "runDimension":J
    neg-long v11, v1

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 178
    .end local v3    # "runDimension":J
    .end local v9    # "dimension":J
    .local v1, "dimension":J
    goto :goto_5

    .line 179
    .end local v1    # "dimension":J
    .restart local v9    # "dimension":J
    :cond_b
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v1, v1

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 182
    .end local v9    # "dimension":J
    .restart local v1    # "dimension":J
    :goto_5
    return-wide v1
.end method
