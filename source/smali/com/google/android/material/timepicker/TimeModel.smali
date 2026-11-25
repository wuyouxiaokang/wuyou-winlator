.class Lcom/google/android/material/timepicker/TimeModel;
.super Ljava/lang/Object;
.source "TimeModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/timepicker/TimeModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final format:I

.field hour:I

.field private final hourInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

.field minute:I

.field private final minuteInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

.field period:I

.field selection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 159
    new-instance v0, Lcom/google/android/material/timepicker/TimeModel$1;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/TimeModel$1;-><init>()V

    sput-object v0, Lcom/google/android/material/timepicker/TimeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "selection"    # I
    .param p4, "format"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 61
    iput p2, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    .line 62
    iput p3, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    .line 63
    iput p4, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    .line 64
    invoke-static {p1}, Lcom/google/android/material/timepicker/TimeModel;->getPeriod(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    .line 65
    new-instance v0, Lcom/google/android/material/timepicker/MaxInputValidator;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Lcom/google/android/material/timepicker/MaxInputValidator;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimeModel;->minuteInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    .line 66
    new-instance v0, Lcom/google/android/material/timepicker/MaxInputValidator;

    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    const/16 v1, 0x18

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    :goto_0
    invoke-direct {v0, v1}, Lcom/google/android/material/timepicker/MaxInputValidator;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hourInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    .line 67
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/material/timepicker/TimeModel;-><init>(IIII)V

    .line 71
    return-void
.end method

.method public static formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 183
    const-string v0, "%02d"

    invoke-static {p0, p1, v0}, Lcom/google/android/material/timepicker/TimeModel;->formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "format"    # Ljava/lang/String;

    .line 187
    nop

    .line 188
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 190
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 187
    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPeriod(I)I
    .locals 1
    .param p0, "hourOfDay"    # I

    .line 81
    const/16 v0, 0xc

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 130
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 131
    return v0

    .line 134
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/timepicker/TimeModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 135
    return v2

    .line 138
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/android/material/timepicker/TimeModel;

    .line 139
    .local v1, "that":Lcom/google/android/material/timepicker/TimeModel;
    iget v3, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    iget v4, v1, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    iget v4, v1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    iget v4, v1, Lcom/google/android/material/timepicker/TimeModel;->format:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    iget v4, v1, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 124
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "hashedFields":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 152
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return-void
.end method
