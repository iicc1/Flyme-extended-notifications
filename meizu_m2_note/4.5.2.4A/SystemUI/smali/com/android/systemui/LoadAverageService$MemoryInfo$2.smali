.class Lcom/android/systemui/LoadAverageService$MemoryInfo$2;
.super Ljava/lang/Object;
.source "LoadAverageService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/LoadAverageService$MemoryInfo;->getInfo()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/LoadAverageService$MemoryInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/LoadAverageService$MemoryInfo;)V
    .locals 0

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo$2;->this$1:Lcom/android/systemui/LoadAverageService$MemoryInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo$2;->this$1:Lcom/android/systemui/LoadAverageService$MemoryInfo;

    # invokes: Lcom/android/systemui/LoadAverageService$MemoryInfo;->update()V
    invoke-static {v0}, Lcom/android/systemui/LoadAverageService$MemoryInfo;->access$600(Lcom/android/systemui/LoadAverageService$MemoryInfo;)V

    .line 1245
    return-void
.end method
