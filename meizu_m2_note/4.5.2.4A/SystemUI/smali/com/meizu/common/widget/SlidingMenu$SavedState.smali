.class public Lcom/meizu/common/widget/SlidingMenu$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SlidingMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/SlidingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/common/widget/SlidingMenu$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1188
    new-instance v0, Lcom/meizu/common/widget/SlidingMenu$SavedState$1;

    invoke-direct {v0}, Lcom/meizu/common/widget/SlidingMenu$SavedState$1;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/SlidingMenu$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1169
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/SlidingMenu$SavedState;->mItem:I

    .line 1171
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/common/widget/SlidingMenu$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/meizu/common/widget/SlidingMenu$1;

    .prologue
    .line 1156
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/SlidingMenu$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "item"    # I

    .prologue
    .line 1163
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1164
    iput p2, p0, Lcom/meizu/common/widget/SlidingMenu$SavedState;->mItem:I

    .line 1165
    return-void
.end method


# virtual methods
.method public getItem()I
    .locals 1

    .prologue
    .line 1175
    iget v0, p0, Lcom/meizu/common/widget/SlidingMenu$SavedState;->mItem:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1184
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1185
    iget v0, p0, Lcom/meizu/common/widget/SlidingMenu$SavedState;->mItem:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    return-void
.end method
