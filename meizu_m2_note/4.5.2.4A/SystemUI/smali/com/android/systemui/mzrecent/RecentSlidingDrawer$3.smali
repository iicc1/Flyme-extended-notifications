.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$3;
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
    .line 554
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$3;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$3;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurBrightness:I

    .line 558
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$3;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->onBrightnessChanged()V

    .line 559
    return-void
.end method
