.class Lcom/meizu/common/widget/Switch$1;
.super Ljava/lang/Object;
.source "Switch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/Switch;->setCheckedDelayed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/Switch;

.field final synthetic val$checked:Z


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/Switch;Z)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/meizu/common/widget/Switch$1;->this$0:Lcom/meizu/common/widget/Switch;

    iput-boolean p2, p0, Lcom/meizu/common/widget/Switch$1;->val$checked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 977
    iget-object v0, p0, Lcom/meizu/common/widget/Switch$1;->this$0:Lcom/meizu/common/widget/Switch;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/common/widget/Switch;->mAnimRunning:Z
    invoke-static {v0, v1}, Lcom/meizu/common/widget/Switch;->access$402(Lcom/meizu/common/widget/Switch;Z)Z

    .line 978
    iget-object v0, p0, Lcom/meizu/common/widget/Switch$1;->this$0:Lcom/meizu/common/widget/Switch;

    iget-boolean v1, p0, Lcom/meizu/common/widget/Switch$1;->val$checked:Z

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 979
    return-void
.end method
