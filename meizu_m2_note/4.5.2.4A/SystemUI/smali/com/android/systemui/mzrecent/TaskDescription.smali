.class public final Lcom/android/systemui/mzrecent/TaskDescription;
.super Ljava/lang/Object;
.source "TaskDescription.java"


# instance fields
.field final description:Ljava/lang/CharSequence;

.field final intent:Landroid/content/Intent;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/CharSequence;

.field private newIntent:Landroid/content/Intent;

.field final packageName:Ljava/lang/String;

.field final persistentTaskId:I

.field final resolveInfo:Landroid/content/pm/ResolveInfo;

.field final taskId:I


# direct methods
.method public constructor <init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0
    .param p1, "_taskId"    # I
    .param p2, "_persistentTaskId"    # I
    .param p3, "_resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_packageName"    # Ljava/lang/String;
    .param p6, "_description"    # Ljava/lang/CharSequence;
    .param p7, "_newIntent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p3, p0, Lcom/android/systemui/mzrecent/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 50
    iput-object p4, p0, Lcom/android/systemui/mzrecent/TaskDescription;->intent:Landroid/content/Intent;

    .line 51
    iput p1, p0, Lcom/android/systemui/mzrecent/TaskDescription;->taskId:I

    .line 52
    iput p2, p0, Lcom/android/systemui/mzrecent/TaskDescription;->persistentTaskId:I

    .line 54
    iput-object p6, p0, Lcom/android/systemui/mzrecent/TaskDescription;->description:Ljava/lang/CharSequence;

    .line 55
    iput-object p5, p0, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Lcom/android/systemui/mzrecent/TaskDescription;->newIntent:Landroid/content/Intent;

    .line 58
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/mzrecent/TaskDescription;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/mzrecent/TaskDescription;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNewIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/mzrecent/TaskDescription;->newIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/systemui/mzrecent/TaskDescription;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 87
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/systemui/mzrecent/TaskDescription;->mLabel:Ljava/lang/CharSequence;

    .line 79
    return-void
.end method
