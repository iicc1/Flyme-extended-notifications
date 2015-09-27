.class public final Lcom/meizu/common/widget/MzContactsContract;
.super Ljava/lang/Object;
.source "MzContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/MzContactsContract$MzGroups;,
        Lcom/meizu/common/widget/MzContactsContract$MzCommonDataKinds;,
        Lcom/meizu/common/widget/MzContactsContract$MzData;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

.field private static SPLIT_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "content://com.android.contacts.notify"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/MzContactsContract;->AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

    .line 877
    const-string v0, "([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/MzContactsContract;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method
