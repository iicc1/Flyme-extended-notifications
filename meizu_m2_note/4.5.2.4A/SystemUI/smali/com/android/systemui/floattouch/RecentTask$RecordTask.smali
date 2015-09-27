.class Lcom/android/systemui/floattouch/RecentTask$RecordTask;
.super Ljava/lang/Object;
.source "RecentTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/floattouch/RecentTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordTask"
.end annotation


# instance fields
.field public back:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

.field final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/floattouch/RecentTask;

.field public toward:Lcom/android/systemui/floattouch/RecentTask$RecordTask;


# direct methods
.method public constructor <init>(Lcom/android/systemui/floattouch/RecentTask;Landroid/content/Intent;)V
    .locals 1
    .param p2, "baceIntent"    # Landroid/content/Intent;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->this$0:Lcom/android/systemui/floattouch/RecentTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    .line 278
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    check-cast p1, Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
