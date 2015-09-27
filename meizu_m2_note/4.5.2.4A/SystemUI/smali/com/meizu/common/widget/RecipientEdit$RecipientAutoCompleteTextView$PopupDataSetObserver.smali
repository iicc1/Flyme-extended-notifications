.class Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 2696
    iput-object p1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;Lcom/meizu/common/widget/RecipientEdit$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;
    .param p2, "x1"    # Lcom/meizu/common/widget/RecipientEdit$1;

    .prologue
    .line 2696
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;-><init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2699
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->changePopupBackground()V

    .line 2700
    return-void
.end method
