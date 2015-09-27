.class public Lcom/android/systemui/mzrecent/RecentTasksLoader;
.super Ljava/lang/Object;
.source "RecentTasksLoader.java"


# static fields
.field public static componentEasyLauncherDialer:Landroid/content/ComponentName;

.field public static componentEasyLauncherMms:Landroid/content/ComponentName;

.field public static componentNameCamera:Landroid/content/ComponentName;

.field public static componentNameGallery:Landroid/content/ComponentName;

.field public static mGallery3dPkg:Ljava/lang/String;

.field public static pkgEasyLauncher:Ljava/lang/String;


# instance fields
.field private componentNameMovie:Landroid/content/ComponentName;

.field private componentNameVideo:Landroid/content/ComponentName;

.field private mAlarmClockPkg:Ljava/lang/String;

.field mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field protected mCachedInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFirstTask:Landroid/content/ComponentName;

.field private mHandler:Landroid/os/Handler;

.field private mIconDpi:I

.field private mLatestTaskInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

.field private mThumbnailLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const-string v0, "com.android.gallery3d"

    sput-object v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mGallery3dPkg:Ljava/lang/String;

    .line 77
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.gallery3d"

    const-string v2, "com.android.camera.CameraLauncher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->componentNameCamera:Landroid/content/ComponentName;

    .line 79
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.gallery3d"

    const-string v2, "com.android.gallery3d.app.Gallery"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->componentNameGallery:Landroid/content/ComponentName;

    .line 82
    const-string v0, "com.meizu.flyme.easylauncher"

    sput-object v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->pkgEasyLauncher:Ljava/lang/String;

    .line 83
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.meizu.flyme.easylauncher"

    const-string v2, "com.meizu.easymode.easymms.ConversationListActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->componentEasyLauncherMms:Landroid/content/ComponentName;

    .line 85
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.meizu.flyme.easylauncher"

    const-string v2, "com.meizu.easymode.easydialer.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->componentEasyLauncherDialer:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0xa0

    const/16 v8, 0x140

    const/16 v4, 0xf0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v5, "com.android.alarmclock"

    iput-object v5, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mAlarmClockPkg:Ljava/lang/String;

    .line 73
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.gallery3d"

    const-string v7, "com.android.gallery3d.app.MovieActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->componentNameMovie:Landroid/content/ComponentName;

    .line 75
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.gallery3d"

    const-string v7, "com.android.gallery3d.app.VideoGallery"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->componentNameVideo:Landroid/content/ComponentName;

    .line 87
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mFirstTask:Landroid/content/ComponentName;

    .line 94
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mArrayList:Ljava/util/ArrayList;

    .line 99
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mContext:Landroid/content/Context;

    .line 100
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 104
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 108
    .local v2, "isTablet":Z
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 109
    .local v1, "density":I
    if-eqz v2, :cond_4

    .line 110
    const/16 v5, 0x78

    if-ne v1, v5, :cond_1

    .line 111
    iput v9, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mIconDpi:I

    .line 123
    :cond_0
    :goto_0
    if-eqz v2, :cond_5

    :goto_1
    iput v4, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mIconDpi:I

    .line 142
    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 146
    .local v0, "am":Landroid/app/ActivityManager;
    return-void

    .line 112
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_1
    if-ne v1, v9, :cond_2

    .line 113
    iput v4, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mIconDpi:I

    goto :goto_0

    .line 114
    :cond_2
    if-ne v1, v4, :cond_3

    .line 115
    iput v8, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mIconDpi:I

    goto :goto_0

    .line 116
    :cond_3
    if-ne v1, v8, :cond_0

    .line 118
    iput v8, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mIconDpi:I

    goto :goto_0

    .line 121
    :cond_4
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v5, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mIconDpi:I

    goto :goto_0

    .line 123
    :cond_5
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_1
.end method

.method static toTargetSize(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 501
    return-object p1
.end method


# virtual methods
.method public cancelLoadingThumbnails()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 338
    :cond_0
    return-void
.end method

.method createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/content/pm/ActivityInfo;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/android/systemui/mzrecent/TaskDescription;
    .locals 22
    .param p1, "taskId"    # I
    .param p2, "persistentTaskId"    # I
    .param p3, "baseIntent"    # Landroid/content/Intent;
    .param p4, "origActivity"    # Landroid/content/ComponentName;
    .param p5, "description"    # Ljava/lang/CharSequence;
    .param p6, "homeInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/CharSequence;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;)",
            "Lcom/android/systemui/mzrecent/TaskDescription;"
        }
    .end annotation

    .prologue
    .line 168
    .local p7, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ComponentName;>;"
    .local p8, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ComponentName;>;"
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 169
    .local v9, "intent":Landroid/content/Intent;
    if-eqz p4, :cond_0

    .line 170
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 172
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 173
    .local v20, "pm":Landroid/content/pm/PackageManager;
    if-nez p6, :cond_1

    .line 174
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p6

    .line 178
    :cond_1
    const/16 v19, 0x0

    .line 179
    .local v19, "packageName":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_3

    .line 180
    const/4 v2, 0x0

    .line 271
    :cond_2
    :goto_0
    return-object v2

    .line 182
    :cond_3
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 183
    const/16 v18, 0x0

    .line 184
    .local v18, "mTitle":Ljava/lang/String;
    const/16 v17, 0x0

    .line 191
    .local v17, "mIcon":Landroid/graphics/drawable/Drawable;
    const/16 v16, 0x0

    .line 192
    .local v16, "isSameApp":Z
    sget-object v3, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mGallery3dPkg:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v14, 0x1

    .line 193
    .local v14, "isGallery3d":Z
    :goto_1
    sget-object v3, Lcom/android/systemui/mzrecent/RecentTasksLoader;->pkgEasyLauncher:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v13, 0x1

    .line 194
    .local v13, "isEasyLauncher":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->componentNameMovie:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->componentNameVideo:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_4
    const/4 v15, 0x1

    .line 197
    .local v15, "isMovieOrVideo":Z
    :goto_3
    if-eqz v15, :cond_5

    .line 198
    const/4 v14, 0x0

    .line 200
    :cond_5
    if-nez v14, :cond_d

    if-nez v13, :cond_d

    .line 201
    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 202
    move-object/from16 v0, p8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 203
    const/16 v16, 0x1

    .line 206
    :cond_6
    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_7
    :goto_4
    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, -0x200001

    and-int/2addr v3, v4

    const/high16 v4, 0x10000000

    or-int/2addr v3, v4

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 220
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 222
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_9

    .line 223
    iget-object v12, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 224
    .local v12, "info":Landroid/content/pm/ActivityInfo;
    const/4 v10, 0x0

    .line 225
    .local v10, "appInfo":Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mCachedInfos:Ljava/util/HashMap;

    if-eqz v3, :cond_8

    if-eqz v12, :cond_8

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mCachedInfos:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "appInfo":Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;
    check-cast v10, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;

    .line 228
    .restart local v10    # "appInfo":Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;
    :cond_8
    if-eqz v10, :cond_f

    invoke-virtual {v10}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    .line 229
    .local v21, "title":Ljava/lang/String;
    :goto_5
    if-eqz v10, :cond_10

    invoke-virtual {v10}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 230
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mCachedInfos:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;

    move-object/from16 v0, v21

    invoke-direct {v6, v11, v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    if-eqz v21, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    if-eqz v11, :cond_9

    .line 236
    new-instance v2, Lcom/android/systemui/mzrecent/TaskDescription;

    iget-object v7, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/mzrecent/TaskDescription;-><init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 239
    .local v2, "item":Lcom/android/systemui/mzrecent/TaskDescription;
    if-eqz v21, :cond_11

    .line 240
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/systemui/mzrecent/TaskDescription;->setLabel(Ljava/lang/CharSequence;)V

    .line 244
    :goto_7
    if-eqz v11, :cond_12

    .line 245
    invoke-virtual {v2, v11}, Lcom/android/systemui/mzrecent/TaskDescription;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 258
    :goto_8
    if-eqz v16, :cond_2

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v3, v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mKillArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v3, v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mKillArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v2    # "item":Lcom/android/systemui/mzrecent/TaskDescription;
    .end local v10    # "appInfo":Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "info":Landroid/content/pm/ActivityInfo;
    .end local v21    # "title":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 192
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "isEasyLauncher":Z
    .end local v14    # "isGallery3d":Z
    .end local v15    # "isMovieOrVideo":Z
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 193
    .restart local v14    # "isGallery3d":Z
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 194
    .restart local v13    # "isEasyLauncher":Z
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 209
    .restart local v15    # "isMovieOrVideo":Z
    :cond_d
    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 210
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 211
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, p8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 213
    :cond_e
    const/16 v16, 0x1

    goto/16 :goto_4

    .line 228
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v10    # "appInfo":Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;
    .restart local v12    # "info":Landroid/content/pm/ActivityInfo;
    :cond_f
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_5

    .line 229
    .restart local v21    # "title":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/mzrecent/RecentTasksLoader;->toTargetSize(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto/16 :goto_6

    .line 242
    .restart local v2    # "item":Lcom/android/systemui/mzrecent/TaskDescription;
    .restart local v11    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_11
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/systemui/mzrecent/TaskDescription;->setLabel(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 247
    :cond_12
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/systemui/mzrecent/TaskDescription;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8
.end method

.method public getFirstTask()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mFirstTask:Landroid/content/ComponentName;

    return-object v0
.end method

.method getRecentTasks(Ljava/util/HashMap;Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 24
    .param p3, "start"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/mzrecent/TaskDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "allMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ComponentName;>;"
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/RecentTasksLoader;->cancelLoadingThumbnails()V

    .line 345
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mArrayList:Ljava/util/ArrayList;

    .line 346
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v23, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/mzrecent/TaskDescription;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 348
    .local v19, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    .line 351
    .local v11, "am":Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mLatestTaskInfos:Ljava/util/List;

    move-object/from16 v21, v0

    .line 358
    .local v21, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 361
    .local v8, "homeInfo":Landroid/content/pm/ActivityInfo;
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 362
    .local v22, "recentTasksToKeepInCache":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v18

    .line 363
    .local v18, "numTasks":I
    if-gtz v18, :cond_1

    .line 364
    const/16 v23, 0x0

    .line 398
    .end local v23    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/mzrecent/TaskDescription;>;"
    :cond_0
    return-object v23

    .line 368
    .restart local v23    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/mzrecent/TaskDescription;>;"
    :cond_1
    move/from16 v12, p3

    .line 369
    .local v12, "first":I
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 370
    .local v10, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 371
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 372
    .local v13, "firstRecentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v16, Landroid/content/Intent;

    iget-object v2, v13, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 373
    .local v16, "intent":Landroid/content/Intent;
    iget-object v2, v13, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    .line 374
    iget-object v2, v13, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 376
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mFirstTask:Landroid/content/ComponentName;

    .line 377
    if-lez v18, :cond_0

    .line 378
    move v14, v12

    .local v14, "i":I
    const/4 v15, 0x0

    .line 379
    .local v15, "index":I
    :goto_0
    move/from16 v0, v18

    if-ge v14, v0, :cond_0

    const/16 v2, 0x1c

    if-ge v15, v2, :cond_0

    move/from16 v0, p4

    if-ge v15, v0, :cond_0

    .line 380
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 382
    .local v20, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    move-object/from16 v0, v20

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move-object/from16 v0, v20

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/mzrecent/RecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/content/pm/ActivityInfo;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/android/systemui/mzrecent/TaskDescription;

    move-result-object v17

    .line 387
    .local v17, "item":Lcom/android/systemui/mzrecent/TaskDescription;
    if-eqz v17, :cond_3

    .line 388
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    add-int/lit8 v15, v15, 0x1

    .line 379
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0
.end method

.method public setCachedIconsAndLabels(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/systemui/mzrecent/RecentSlidingDrawer$AppInfo;>;"
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mCachedInfos:Ljava/util/HashMap;

    .line 474
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    .line 150
    return-void
.end method

.method public setLatestTaskInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mLatestTaskInfos:Ljava/util/List;

    .line 158
    return-void
.end method

.method public setRecentDrawer(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V
    .locals 0
    .param p1, "drawer"    # Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    .line 154
    return-void
.end method
