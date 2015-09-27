.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21$1;
.super Ljava/lang/Object;
.source "RecentSlidingDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->onPostExecute(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;


# direct methods
.method constructor <init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;)V
    .locals 0

    .prologue
    .line 3417
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21$1;->this$1:Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3422
    sget-object v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mInstance:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->requesteLayout(Z)V

    .line 3423
    return-void
.end method
