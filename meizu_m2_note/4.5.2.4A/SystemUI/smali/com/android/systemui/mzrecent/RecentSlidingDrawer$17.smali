.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$17;
.super Ljava/lang/Object;
.source "RecentSlidingDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->forceStopPackage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2831
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$17;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iput-object p2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$17;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2836
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$17;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v1, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2838
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$17;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 2839
    return-void
.end method
