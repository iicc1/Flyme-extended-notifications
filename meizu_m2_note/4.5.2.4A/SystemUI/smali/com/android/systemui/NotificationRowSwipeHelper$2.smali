.class Lcom/android/systemui/NotificationRowSwipeHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationRowSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/NotificationRowSwipeHelper;->dismissChild(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/NotificationRowSwipeHelper;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/systemui/NotificationRowSwipeHelper$2;->this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/NotificationRowSwipeHelper$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/NotificationRowSwipeHelper$2;->val$animView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper$2;->this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

    # getter for: Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;
    invoke-static {v0}, Lcom/android/systemui/NotificationRowSwipeHelper;->access$300(Lcom/android/systemui/NotificationRowSwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/NotificationRowSwipeHelper$2;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/SwipeHelper$Callback;->onChildDismissed(Landroid/view/View;)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper$2;->val$animView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 368
    return-void
.end method
