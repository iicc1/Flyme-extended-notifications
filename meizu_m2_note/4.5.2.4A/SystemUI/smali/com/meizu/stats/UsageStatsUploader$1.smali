.class Lcom/meizu/stats/UsageStatsUploader$1;
.super Ljava/lang/Object;
.source "UsageStatsUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/stats/UsageStatsUploader;-><init>(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/stats/UsageStatsUploader;


# direct methods
.method constructor <init>(Lcom/meizu/stats/UsageStatsUploader;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsUploader$1;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$1;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;
    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->access$000(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsProviderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsProviderHelper;->clearOldData()I

    .line 111
    return-void
.end method
