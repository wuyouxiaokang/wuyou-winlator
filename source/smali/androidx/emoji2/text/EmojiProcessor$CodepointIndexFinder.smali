.class abstract Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodepointIndexFinder"
.end annotation


# direct methods
.method static findIndexBackward(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .line 676
    move v0, p1

    .line 677
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 678
    .local v1, "waitingHighSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 679
    .local v2, "length":I
    const/4 v3, -0x1

    if-ltz v0, :cond_0

    if-ge v2, v0, :cond_1

    :cond_0
    goto :goto_1

    .line 682
    :cond_1
    if-gez p2, :cond_2

    .line 683
    return v3

    .line 685
    :cond_2
    move v4, p2

    .line 687
    .local v4, "remainingCodePoints":I
    :goto_0
    if-nez v4, :cond_3

    .line 688
    return v0

    .line 691
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 692
    if-gez v0, :cond_5

    .line 693
    if-eqz v1, :cond_4

    .line 694
    return v3

    .line 696
    :cond_4
    const/4 v3, 0x0

    return v3

    .line 699
    :cond_5
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 700
    .local v5, "c":C
    if-eqz v1, :cond_7

    .line 701
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_6

    .line 702
    return v3

    .line 704
    :cond_6
    const/4 v1, 0x0

    .line 705
    add-int/lit8 v4, v4, -0x1

    .line 706
    goto :goto_0

    .line 708
    :cond_7
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_8

    .line 709
    add-int/lit8 v4, v4, -0x1

    .line 710
    goto :goto_0

    .line 712
    :cond_8
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 713
    return v3

    .line 715
    :cond_9
    const/4 v1, 0x1

    .line 716
    .end local v5    # "c":C
    goto :goto_0

    .line 680
    .end local v4    # "remainingCodePoints":I
    :goto_1
    return v3
.end method

.method static findIndexForward(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .line 732
    move v0, p1

    .line 733
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 734
    .local v1, "waitingLowSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 735
    .local v2, "length":I
    const/4 v3, -0x1

    if-ltz v0, :cond_0

    if-ge v2, v0, :cond_1

    :cond_0
    goto :goto_1

    .line 738
    :cond_1
    if-gez p2, :cond_2

    .line 739
    return v3

    .line 741
    :cond_2
    move v4, p2

    .line 744
    .local v4, "remainingCodePoints":I
    :goto_0
    if-nez v4, :cond_3

    .line 745
    return v0

    .line 748
    :cond_3
    if-lt v0, v2, :cond_5

    .line 749
    if-eqz v1, :cond_4

    .line 750
    return v3

    .line 752
    :cond_4
    return v2

    .line 755
    :cond_5
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 756
    .local v5, "c":C
    if-eqz v1, :cond_7

    .line 757
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_6

    .line 758
    return v3

    .line 760
    :cond_6
    add-int/lit8 v4, v4, -0x1

    .line 761
    const/4 v1, 0x0

    .line 762
    add-int/lit8 v0, v0, 0x1

    .line 763
    goto :goto_0

    .line 765
    :cond_7
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_8

    .line 766
    add-int/lit8 v4, v4, -0x1

    .line 767
    add-int/lit8 v0, v0, 0x1

    .line 768
    goto :goto_0

    .line 770
    :cond_8
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 771
    return v3

    .line 773
    :cond_9
    const/4 v1, 0x1

    .line 774
    nop

    .end local v5    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 775
    goto :goto_0

    .line 736
    .end local v4    # "remainingCodePoints":I
    :goto_1
    return v3
.end method
