.class Lcom/meizu/common/widget/CustomTimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CustomTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CustomTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/common/widget/CustomTimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:I

.field private final h:I

.field private final leapmonth:I

.field private final lunar:I

.field private final min:I

.field private final mon:I

.field private final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 600
    new-instance v0, Lcom/meizu/common/widget/CustomTimePicker$SavedState$1;

    invoke-direct {v0}, Lcom/meizu/common/widget/CustomTimePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 577
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->h:I

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->min:I

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->y:I

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->mon:I

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->d:I

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->lunar:I

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->leapmonth:I

    .line 585
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/common/widget/CustomTimePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/meizu/common/widget/CustomTimePicker$1;

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIIIZZ)V
    .locals 3
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "year"    # I
    .param p5, "month"    # I
    .param p6, "day"    # I
    .param p7, "isLunar"    # Z
    .param p8, "isLeapMonth"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 565
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 566
    iput p2, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->h:I

    .line 567
    iput p3, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->min:I

    .line 568
    iput p4, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->y:I

    .line 569
    iput p5, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->mon:I

    .line 570
    iput p6, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->d:I

    .line 571
    if-eqz p7, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->lunar:I

    .line 572
    if-eqz p8, :cond_1

    :goto_1
    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->leapmonth:I

    .line 574
    return-void

    :cond_0
    move v0, v2

    .line 571
    goto :goto_0

    :cond_1
    move v1, v2

    .line 572
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIIIZZLcom/meizu/common/widget/CustomTimePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Z
    .param p8, "x7"    # Z
    .param p9, "x8"    # Lcom/meizu/common/widget/CustomTimePicker$1;

    .prologue
    .line 552
    invoke-direct/range {p0 .. p8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIIIZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker$SavedState;

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->h:I

    return v0
.end method

.method static synthetic access$1400(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker$SavedState;

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->min:I

    return v0
.end method

.method static synthetic access$1500(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker$SavedState;

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->y:I

    return v0
.end method

.method static synthetic access$1600(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker$SavedState;

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->mon:I

    return v0
.end method

.method static synthetic access$1700(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker$SavedState;

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->d:I

    return v0
.end method

.method static synthetic access$1800(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker$SavedState;

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->lunar:I

    return v0
.end method

.method static synthetic access$1900(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker$SavedState;

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->leapmonth:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 589
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 590
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->min:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->mon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->lunar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->leapmonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    return-void
.end method
