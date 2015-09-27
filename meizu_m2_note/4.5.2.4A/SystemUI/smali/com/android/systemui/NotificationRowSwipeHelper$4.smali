.class Lcom/android/systemui/NotificationRowSwipeHelper$4;
.super Ljava/lang/Object;
.source "NotificationRowSwipeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canAnimViewBeDismissed:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/NotificationRowSwipeHelper;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/systemui/NotificationRowSwipeHelper$4;->this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/NotificationRowSwipeHelper$4;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/NotificationRowSwipeHelper$4;->val$canAnimViewBeDismissed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper$4;->this$0:Lcom/android/systemui/NotificationRowSwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/NotificationRowSwipeHelper$4;->val$animView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/NotificationRowSwipeHelper$4;->val$canAnimViewBeDismissed:Z

    # invokes: Lcom/android/systemui/NotificationRowSwipeHelper;->updateAlphaFromOffset(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/NotificationRowSwipeHelper;->access$400(Lcom/android/systemui/NotificationRowSwipeHelper;Landroid/view/View;Z)V

    .line 387
    return-void
.end method
