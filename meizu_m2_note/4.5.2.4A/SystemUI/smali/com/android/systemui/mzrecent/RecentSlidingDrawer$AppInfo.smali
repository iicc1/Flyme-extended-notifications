.class public Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;
.super Ljava/lang/Object;
.source "RecentSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field mIcon:Landroid/graphics/drawable/Drawable;

.field mLabel:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 4570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4571
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 4572
    iput-object p2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;->mLabel:Ljava/lang/CharSequence;

    .line 4573
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4579
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 4583
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method
