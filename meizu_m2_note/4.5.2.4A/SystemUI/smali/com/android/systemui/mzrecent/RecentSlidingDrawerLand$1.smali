.class Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand$1;
.super Ljava/lang/Object;
.source "RecentSlidingDrawerLand.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->configurForMx2OrMx3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;


# direct methods
.method constructor <init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand$1;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand$1;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;

    invoke-virtual {v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand$1;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;

    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand$1;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;

    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->getWidth()I

    move-result v1

    # setter for: Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mDrawerValidDistance:I
    invoke-static {v0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->access$002(Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;I)I

    .line 68
    return-void
.end method
