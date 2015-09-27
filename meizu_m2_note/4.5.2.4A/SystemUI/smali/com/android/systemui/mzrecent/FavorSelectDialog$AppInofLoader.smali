.class public Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;
.super Landroid/os/AsyncTask;
.source "FavorSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/mzrecent/FavorSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppInofLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

.field final synthetic this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/mzrecent/FavorSelectDialog;Lcom/android/systemui/mzrecent/FavorSelectDialog;)V
    .locals 0
    .param p2, "dialog"    # Lcom/android/systemui/mzrecent/FavorSelectDialog;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 184
    iput-object p2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;->mDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    .line 185
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 7
    .param p1, "param"    # [Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x0

    .line 190
    iget-object v3, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    # getter for: Lcom/android/systemui/mzrecent/FavorSelectDialog;->mAppInfos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->access$100(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    # getter for: Lcom/android/systemui/mzrecent/FavorSelectDialog;->mAppInfos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->access$100(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 191
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    # getter for: Lcom/android/systemui/mzrecent/FavorSelectDialog;->mAppInfos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->access$100(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 192
    iget-object v3, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    # getter for: Lcom/android/systemui/mzrecent/FavorSelectDialog;->mAppInfos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->access$100(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;

    .line 193
    .local v0, "appInfo":Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;
    if-eqz v0, :cond_0

    .line 194
    iget-object v3, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    # getter for: Lcom/android/systemui/mzrecent/FavorSelectDialog;->mCachedInfos:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->access$300(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;

    .line 195
    .local v1, "cacheInfo":Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;
    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 197
    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mLabel:Ljava/lang/CharSequence;

    .line 206
    .end local v1    # "cacheInfo":Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;
    :cond_0
    :goto_1
    if-lez v2, :cond_1

    # getter for: Lcom/android/systemui/mzrecent/FavorSelectDialog;->LOAD_STEP_COUNT:I
    invoke-static {}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->access$600()I

    move-result v3

    rem-int v3, v2, v3

    if-nez v3, :cond_1

    .line 207
    iget-object v3, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    # getter for: Lcom/android/systemui/mzrecent/FavorSelectDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->access$700(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .restart local v1    # "cacheInfo":Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    iget-object v4, v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    # getter for: Lcom/android/systemui/mzrecent/FavorSelectDialog;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->access$400(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    # invokes: Lcom/android/systemui/mzrecent/FavorSelectDialog;->createShadowDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v4}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->access$500(Lcom/android/systemui/mzrecent/FavorSelectDialog;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 201
    iget-object v3, v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    # getter for: Lcom/android/systemui/mzrecent/FavorSelectDialog;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->access$400(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mLabel:Ljava/lang/CharSequence;

    .line 203
    iget-object v3, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    # getter for: Lcom/android/systemui/mzrecent/FavorSelectDialog;->mCachedInfos:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->access$300(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 211
    .end local v0    # "appInfo":Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;
    .end local v1    # "cacheInfo":Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;
    .end local v2    # "i":I
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 179
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    # getter for: Lcom/android/systemui/mzrecent/FavorSelectDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->access$700(Lcom/android/systemui/mzrecent/FavorSelectDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 217
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 179
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInofLoader;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
