.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$4;
.super Landroid/database/ContentObserver;
.source "RecentSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$4;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$4;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->onBrightnessModeChanged()V

    .line 568
    return-void
.end method
