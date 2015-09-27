.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$5;
.super Landroid/database/ContentObserver;
.source "RecentSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 660
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$5;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$5;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$5;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    # invokes: Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getCurrentInputMethod()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->access$000(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCurrentInputMethodPkg:Ljava/lang/String;

    .line 664
    return-void
.end method
