.class public Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;
.super Ljava/lang/Object;
.source "FavorSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/mzrecent/FavorSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mIconView:Landroid/widget/ImageView;

.field mLabelView:Landroid/widget/TextView;

.field mResolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mzrecent/FavorSelectDialog;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$ViewHolder;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
