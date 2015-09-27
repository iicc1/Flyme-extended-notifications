.class Lcom/android/systemui/NotificationRowSwipeHelper$6;
.super Ljava/lang/Object;
.source "NotificationRowSwipeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

.field final synthetic val$canAnimViewBeDismissed:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/NotificationRowSwipeHelper;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/systemui/NotificationRowSwipeHelper$6;->this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/NotificationRowSwipeHelper$6;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/NotificationRowSwipeHelper$6;->val$canAnimViewBeDismissed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper$6;->this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/NotificationRowSwipeHelper$6;->val$view:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/NotificationRowSwipeHelper$6;->val$canAnimViewBeDismissed:Z

    # invokes: Lcom/android/systemui/NotificationRowSwipeHelper;->updateAlphaFromOffset(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/NotificationRowSwipeHelper;->access$400(Lcom/android/systemui/NotificationRowSwipeHelper;Landroid/view/View;Z)V

    .line 406
    return-void
.end method
