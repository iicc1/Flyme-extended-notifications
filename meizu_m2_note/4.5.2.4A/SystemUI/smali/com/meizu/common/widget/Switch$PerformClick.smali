.class final Lcom/meizu/common/widget/Switch$PerformClick;
.super Ljava/lang/Object;
.source "Switch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/Switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/Switch;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/Switch;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/meizu/common/widget/Switch$PerformClick;->this$0:Lcom/meizu/common/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/Switch;Lcom/meizu/common/widget/Switch$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/widget/Switch;
    .param p2, "x1"    # Lcom/meizu/common/widget/Switch$1;

    .prologue
    .line 760
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch$PerformClick;-><init>(Lcom/meizu/common/widget/Switch;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/meizu/common/widget/Switch$PerformClick;->this$0:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v0}, Lcom/meizu/common/widget/Switch;->performClick()Z

    .line 763
    return-void
.end method
