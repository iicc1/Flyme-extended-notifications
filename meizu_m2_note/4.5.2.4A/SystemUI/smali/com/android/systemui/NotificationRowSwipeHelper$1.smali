.class Lcom/android/systemui/NotificationRowSwipeHelper$1;
.super Ljava/lang/Object;
.source "NotificationRowSwipeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/NotificationRowSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/NotificationRowSwipeHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/NotificationRowSwipeHelper;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/systemui/NotificationRowSwipeHelper$1;->this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper$1;->this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

    # getter for: Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/NotificationRowSwipeHelper;->access$000(Lcom/android/systemui/NotificationRowSwipeHelper;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper$1;->this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

    # getter for: Lcom/android/systemui/NotificationRowSwipeHelper;->mLongPressSent:Z
    invoke-static {v0}, Lcom/android/systemui/NotificationRowSwipeHelper;->access$100(Lcom/android/systemui/NotificationRowSwipeHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper$1;->this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/NotificationRowSwipeHelper;->mLongPressSent:Z
    invoke-static {v0, v1}, Lcom/android/systemui/NotificationRowSwipeHelper;->access$102(Lcom/android/systemui/NotificationRowSwipeHelper;Z)Z

    .line 286
    iget-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper$1;->this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

    # getter for: Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/NotificationRowSwipeHelper;->access$000(Lcom/android/systemui/NotificationRowSwipeHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper$1;->this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

    # getter for: Lcom/android/systemui/NotificationRowSwipeHelper;->mLongPressListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lcom/android/systemui/NotificationRowSwipeHelper;->access$200(Lcom/android/systemui/NotificationRowSwipeHelper;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/NotificationRowSwipeHelper$1;->this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

    # getter for: Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/NotificationRowSwipeHelper;->access$000(Lcom/android/systemui/NotificationRowSwipeHelper;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 289
    :cond_0
    return-void
.end method
