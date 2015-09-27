.class public Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "ViewFragmentArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNotifyOnChange:Z

.field private mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;, "Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter<TT;>;"
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->mNotifyOnChange:Z

    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->mContext:Landroid/content/Context;

    .line 27
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 28
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->mObjects:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;, "Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;, "Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 15
    .local p0, "this":Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;, "Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->getItem(I)Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 52
    .local p0, "this":Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;, "Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    .local p0, "this":Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;, "Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->getItem(I)Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;->onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;, "Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter<TT;>;"
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->mNotifyOnChange:Z

    .line 120
    return-void
.end method

.method public set(Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;I)V
    .locals 1
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;, "Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter<TT;>;"
    .local p1, "object":Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;, "TT;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->notifyDataSetChanged()V

    .line 100
    :cond_0
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0
    .param p1, "notifyOnChange"    # Z

    .prologue
    .line 123
    .local p0, "this":Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;, "Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->mNotifyOnChange:Z

    .line 124
    return-void
.end method
