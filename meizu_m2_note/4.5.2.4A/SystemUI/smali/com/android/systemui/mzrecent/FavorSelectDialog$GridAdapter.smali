.class Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;
.super Landroid/widget/BaseAdapter;
.source "FavorSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/mzrecent/FavorSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridAdapter"
.end annotation


# instance fields
.field mDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

.field final synthetic this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/mzrecent/FavorSelectDialog;Lcom/android/systemui/mzrecent/FavorSelectDialog;)V
    .locals 0
    .param p2, "dialog"    # Lcom/android/systemui/mzrecent/FavorSelectDialog;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;->mDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    .line 144
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    # getter for: Lcom/android/systemui/mzrecent/FavorSelectDialog;->mAppInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->access$100(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    # getter for: Lcom/android/systemui/mzrecent/FavorSelectDialog;->mAppInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->access$100(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 158
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 163
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    # getter for: Lcom/android/systemui/mzrecent/FavorSelectDialog;->mAppInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->access$100(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;

    .line 164
    .local v1, "info":Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;
    if-eqz v1, :cond_0

    .line 165
    if-nez p2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    iget-object v3, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$GridAdapter;->mDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    # invokes: Lcom/android/systemui/mzrecent/FavorSelectDialog;->createItemView(Lcom/android/systemui/mzrecent/FavorSelectDialog;Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;)Landroid/widget/LinearLayout;
    invoke-static {v2, v3, v1}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->access$200(Lcom/android/systemui/mzrecent/FavorSelectDialog;Lcom/android/systemui/mzrecent/FavorSelectDialog;Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;)Landroid/widget/LinearLayout;

    move-result-object p2

    .line 174
    :cond_0
    :goto_0
    return-object p2

    .line 168
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;

    .line 169
    .local v0, "holder":Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;
    iget-object v2, v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;->mIconView:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v2, v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;->mLabelView:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, v1, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v2, v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method
