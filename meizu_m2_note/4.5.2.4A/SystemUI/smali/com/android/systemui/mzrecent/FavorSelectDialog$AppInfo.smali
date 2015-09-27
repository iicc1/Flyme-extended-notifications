.class public Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;
.super Ljava/lang/Object;
.source "FavorSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/mzrecent/FavorSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppInfo"
.end annotation


# instance fields
.field mIcon:Landroid/graphics/drawable/Drawable;

.field mIndex:I

.field mLabel:Ljava/lang/CharSequence;

.field mResolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/mzrecent/FavorSelectDialog;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/ResolveInfo;I)V
    .locals 0
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p5, "index"    # I

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->this$0:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 111
    iput-object p3, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mLabel:Ljava/lang/CharSequence;

    .line 112
    iput-object p4, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 113
    iput p5, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mIndex:I

    .line 114
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/mzrecent/FavorSelectDialog$AppInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method
