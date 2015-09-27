.class public Lcom/android/systemui/mzrecent/Workspace$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/mzrecent/Workspace;
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
            "Lcom/android/systemui/mzrecent/Workspace$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 995
    new-instance v0, Lcom/android/systemui/mzrecent/Workspace$SavedState$1;

    invoke-direct {v0}, Lcom/android/systemui/mzrecent/Workspace$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/systemui/mzrecent/Workspace$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 985
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 978
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/mzrecent/Workspace$SavedState;->currentScreen:I

    .line 986
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/mzrecent/Workspace$SavedState;->currentScreen:I

    .line 987
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/systemui/mzrecent/Workspace$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/systemui/mzrecent/Workspace$1;

    .prologue
    .line 977
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/Workspace$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 991
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 992
    iget v0, p0, Lcom/android/systemui/mzrecent/Workspace$SavedState;->currentScreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    return-void
.end method
