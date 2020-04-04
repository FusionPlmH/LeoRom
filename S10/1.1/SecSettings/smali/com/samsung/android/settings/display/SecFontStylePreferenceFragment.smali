.class public Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecFontStylePreferenceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;
    }
.end annotation


# static fields
.field private static final APK_NAME_LIST:[Ljava/lang/String;

.field public static DEBUG:Z

.field private static REBOOT:Z

.field private static persistString:Ljava/lang/String;


# instance fields
.field private mCallbackFromDownloadFont:Z

.field private mContext:Landroid/content/Context;

.field private mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

.field private mFontPreviewLayout:Landroid/widget/LinearLayout;

.field private mFontStyleListView:Landroid/widget/ListView;

.field private mHandler:Landroid/os/Handler;

.field private mIsCheckPlatformSignatures:Z

.field private mIsCheckReleaseSignatures:Z

.field private mIsRunLoadListTask:Z

.field mIsSelectedCurrentThemeFont:Z

.field private mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

.field private mPackageName:Ljava/lang/String;

.field private mPreviousFont:I

.field private mSavedClickedItem:I

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSelectedFontStyleItemIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->DEBUG:Z

    const-string v1, ""

    const-string v2, "com.monotype.android.font.chococooky"

    const-string v3, "com.monotype.android.font.cooljazz"

    const-string v4, "com.monotype.android.font.helvneuelt"

    const-string v5, "com.monotype.android.font.samsungsans"

    const-string v6, "com.monotype.android.font.rosemary"

    const-string v7, "com.monotype.android.font.applemint"

    const-string v8, "com.monotype.android.font.tinkerbell"

    const-string v9, "com.monotype.android.font.udrgothic"

    const-string v10, "com.monotype.android.font.udmincho"

    const-string v11, "com.monotype.android.font.arjpopb"

    const-string v12, "com.monotype.android.font.kaiti"

    const-string v13, "com.monotype.android.font.shaonv"

    const-string v14, "com.monotype.android.font.miao"

    const-string v15, "com.monotype.android.font.samsungone"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->APK_NAME_LIST:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->REBOOT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    iput v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    iput v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCallbackFromDownloadFont:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsCheckPlatformSignatures:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsCheckReleaseSignatures:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsSelectedCurrentThemeFont:Z

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->setFontStyleList(Landroid/os/Bundle;)V

    return-void
.end method

.method private applyFontStyle()V
    .locals 2

    const-string v0, "SecFontStylePreferenceFragment"

    const-string v1, "applyFontStyle"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->savePreferences()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->applyFontStyleInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method private copyFileWithCR(Lcom/samsung/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v3

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v5

    nop

    invoke-virtual {p1, p2, v1, p5}, Lcom/samsung/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_0
    return v2

    :catch_1
    move-exception v5

    return v1

    :catch_2
    move-exception v1

    return v2
.end method

.method private getCurrentSavedFontString()Ljava/lang/String;
    .locals 5

    const-string v0, "default"

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    sub-int/2addr v4, v2

    if-lez v4, :cond_0

    array-length v4, v3

    sub-int/2addr v4, v2

    aget-object v0, v3, v4

    :cond_0
    return-object v0
.end method

.method private isSharedFont(Ljava/lang/String;)Z
    .locals 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz v2, :cond_4

    const-string v5, "packageinstaller"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v5, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v4

    :goto_3
    const-string v6, "SecFontStylePreferenceFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Flip font is preload : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " , isSharedFont : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_5

    if-eqz v5, :cond_5

    return v4

    :cond_5
    return v1
.end method

.method private isValidFont(Ljava/lang/String;)Z
    .locals 12

    const/4 v11, 0x0

    return v11
    sget-boolean v0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SecFontStylePreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFont - checking apkname"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "com.monotype.android.font.foundation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->APK_NAME_LIST:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_6

    if-eqz p1, :cond_5

    sget-object v3, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->APK_NAME_LIST:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "android"

    sget-object v5, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->APK_NAME_LIST:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsCheckPlatformSignatures:Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->APK_NAME_LIST:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSignatureMatch(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsCheckReleaseSignatures:Z

    const-string v3, "SecFontStylePreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apkname : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mIsCheckPlatformSignatures : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsCheckPlatformSignatures:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsCheckReleaseSignatures : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsCheckReleaseSignatures:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsCheckPlatformSignatures:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsCheckReleaseSignatures:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->isSharedFont(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    sget-boolean v2, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "SecFontStylePreferenceFragment"

    const-string v3, "checkFont - check if valid certificate"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->isSharedFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v4

    :cond_8
    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v5, v5, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x40

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    goto :goto_2

    :catch_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_e

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v6, v5, v1

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    :try_start_1
    const-string v7, "SHA"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    aget-object v8, v5, v1

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    const-string v9, "T84drf8v3ZMOLvt2SFG/K7ODXgI="

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    sget-boolean v9, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->DEBUG:Z

    if-eqz v9, :cond_9

    const-string v9, "SecFontStylePreferenceFragment"

    const-string v10, "**Signature is correct**"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v1

    :cond_a
    sget-boolean v9, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->DEBUG:Z

    if-eqz v9, :cond_b

    const-string v9, "SecFontStylePreferenceFragment"

    const-string v10, "**Signature is incorrect**"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_b
    return v4

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v8, v2

    :try_start_2
    const-string v9, "X509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v9
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v9

    goto :goto_3

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->printStackTrace()V

    :goto_3
    nop

    :try_start_3
    invoke-virtual {v8, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v2, v9

    goto :goto_4

    :catch_3
    move-exception v9

    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->printStackTrace()V

    :goto_4
    sget-boolean v9, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->DEBUG:Z

    if-eqz v9, :cond_c

    const-string v9, "SecFontStylePreferenceFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APK name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_c

    const-string v9, "SecFontStylePreferenceFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Certificate for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "SecFontStylePreferenceFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Certificate issued by: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "SecFontStylePreferenceFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The certificate is valid from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "SecFontStylePreferenceFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Certificate SN# "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "SecFontStylePreferenceFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Generated with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string v9, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    sget-boolean v4, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "SecFontStylePreferenceFragment"

    const-string v11, "**Certificate data is correct**"

    invoke-static {v4, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v1

    :cond_e
    return v4
.end method

.method private loadPreferences()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    const-string v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "SavedClickedItem"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    iget v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flip_font_style"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flip_font_style"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "SecFontStylePreferenceFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFontStyleIndexForMultiUser() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    :goto_0
    return-void
.end method

.method private savePreferences()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    const-string v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "SelectDialogIsActive"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SavedClickedItem"

    iget v4, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setFontStyleList(Landroid/os/Bundle;)V
    .locals 8

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedInstanceState:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsSelectedCurrentThemeFont:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->loadPreferences()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->setSelectedFontStyle()V

    if-eqz p1, :cond_1

    const-string v0, "USER_SELECTED_FONT_STYLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x1

    move-object v2, p0

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_1
    return-void
.end method

.method private setSelectedFontStyle()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getCurrentSavedFontString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecFontStylePreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelectedFontStyle : selectedFont : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsSelectedCurrentThemeFont:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCurrentThemeFontIndex()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    const-string v1, "SecFontStylePreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelectedFontStyle : Current Theme Font index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    const-string v1, "SecFontStylePreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelectedFontStyle : selectedFont index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    const-wide/16 v8, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private showWarningDialog(Ljava/lang/String;)V
    .locals 4

    move-object v0, p1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12156f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$3;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Ljava/lang/String;)V

    const v3, 0x7f120698

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$2;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$4;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startDownloadFont(I)V
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121575

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v3, 0x14000020

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12155a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    move-object v2, v4

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCallbackFromDownloadFont:Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getMetricsCategory()I

    move-result v3

    const/16 v4, 0x106d

    const-wide/16 v5, 0x3

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iput p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    return-void
.end method


# virtual methods
.method public applyFontStyleInternal()Z
    .locals 19

    move-object/from16 v7, p0

    const-string v1, ""

    iget-boolean v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsSelectedCurrentThemeFont:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getThemeFontCurrentPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3, v9, v2}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v1

    const-string v3, "persist.sys.flipfontpath"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#Theme"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x0

    const-string v0, "SecFontStylePreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOkButtonPressed : mClickedItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v4, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    return v9

    :cond_1
    :goto_0
    invoke-direct {v7, v3}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->isValidFont(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {v7, v3}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->showWarningDialog(Ljava/lang/String;)V

    return v9

    :cond_2
    iget v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    iget v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    iput v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    goto :goto_1

    :cond_3
    iget v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    iput v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    :goto_1
    const-string v0, "SecFontStylePreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOkButtonPressed : mSavedClickedItem : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_4

    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v0

    iput-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    :cond_4
    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget v4, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/flipfont/FontWriter;

    invoke-direct {v0}, Lcom/samsung/android/settings/flipfont/FontWriter;-><init>()V

    move-object v11, v0

    if-eqz v10, :cond_b

    const-string v0, "default"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_5

    :cond_5
    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/samsung/android/settings/flipfont/Typeface;

    move-result-object v12

    move-object v0, v10

    const-string v1, ".xml"

    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_6

    invoke-virtual {v10, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_6
    move-object v14, v0

    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v0, v14}, Lcom/samsung/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    const/4 v0, 0x0

    if-eqz v12, :cond_7

    move-object v1, v0

    move v0, v9

    :goto_2
    move v6, v0

    iget-object v0, v12, Lcom/samsung/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_8

    iget-object v0, v12, Lcom/samsung/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/settings/flipfont/TypefaceFile;

    :try_start_1
    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v1, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v0

    :try_start_2
    const-string v0, "SecFontStylePreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOkButtonPressed : Application name, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v3, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v9, "SecFontStylePreferenceFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string/jumbo v0, "tpf.getFileName(): "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fonts/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v15, v0, v8}, Lcom/samsung/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v8

    move v2, v8

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    nop

    move-object v3, v1

    move-object/from16 v18, v5

    move/from16 v16, v6

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v8, v1

    move v9, v2

    goto :goto_3

    :catch_2
    move-exception v0

    move v9, v2

    move-object v8, v3

    :goto_3
    invoke-virtual {v5}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v5}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v17

    move-object v1, v7

    move-object v2, v11

    move-object v3, v15

    move-object v4, v8

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move/from16 v16, v6

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->copyFileWithCR(Lcom/samsung/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    move v2, v0

    move-object v3, v8

    :goto_4
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v1, v18

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_7
    move-object v1, v0

    :cond_8
    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    sget-boolean v0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "SecFontStylePreferenceFragment"

    const-string v4, "**setOkButtonPressed - enospc error **"

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-direct {v7, v3}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->showWarningDialog(Ljava/lang/String;)V

    const/4 v4, 0x0

    return v4

    :cond_a
    sput-object v10, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->persistString:Ljava/lang/String;

    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v0, v14}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    iget v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    iput v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->savePreferences()V

    iget v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    iput v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    :try_start_3
    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    const-string v4, "sans.loc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v6, v6, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget v8, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v6, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v0, v4, v5}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    const-string v4, "SecFontStylePreferenceFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fontWriter.writeLoc() : RuntimeException occured. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    :goto_5
    sput-object v10, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->persistString:Ljava/lang/String;

    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    const-string v1, " "

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    iget v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    iput v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->savePreferences()V

    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    const-string v1, "sans.loc"

    const-string v4, "default#default"

    invoke-virtual {v11, v0, v1, v4}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v10, :cond_c

    const-string v0, "SecFontStylePreferenceFragment"

    const-string/jumbo v1, "setOkButtonPressed() : selectedFont == null "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_c
    :goto_6
    move-object v1, v10

    :goto_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    sget-boolean v2, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->REBOOT:Z

    if-nez v2, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget-object v4, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$1;

    invoke-direct {v5, v7, v0, v2}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$1;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Landroid/app/IActivityManager;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_d
    const/4 v3, 0x1

    :goto_8
    return v3
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1d16

    return v0
.end method

.method public onCancelButtonPressed()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    const-wide/16 v7, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12147c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const/4 v0, 0x0

    const v1, 0x7f0d01a8

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0326

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontPreviewLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontPreviewLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0a032d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070586

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f07057f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v4

    move v9, v3

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v4

    move v7, v3

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    if-nez v4, :cond_2

    new-instance v4, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$1;)V

    iput-object v4, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_1
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->setFontStyleList(Landroid/os/Bundle;)V

    :cond_2
    :goto_1
    const-string v0, "SecFontStylePreferenceFragment"

    const-string v4, "called onCreate()"

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-static {}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    :cond_1
    const-string v0, "SecFontStylePreferenceFragment"

    const-string v1, "called onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object v1, p0

    const-string v0, "SecFontStylePreferenceFragment"

    const-string v2, "onItemClick:()"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v2, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    move/from16 v3, p3

    iput v3, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    const/4 v4, 0x0

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v5, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    return-void

    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f121476

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->startDownloadFont(I)V

    return-void

    :cond_2
    iget-object v0, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCurrentThemeString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x106d

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v8, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsSelectedCurrentThemeFont:Z

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getMetricsCategory()I

    move-result v0

    const-wide/16 v8, 0x2

    invoke-static {v0, v7, v8, v9}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void

    :cond_3
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsSelectedCurrentThemeFont:Z

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/ActivityManager;

    const/4 v0, 0x3

    invoke-virtual {v10, v0, v8}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_4

    :try_start_1
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_4
    :goto_1
    const-string v0, "SecFontStylePreferenceFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pkgName1:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v12, "USER_SELECTED_FONT_STYLE"

    iget v13, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    iget-object v0, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget v12, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v12, "default"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_2

    :cond_6
    move v8, v9

    nop

    :cond_7
    :goto_2
    iget v9, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    iget v12, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    if-eq v9, v12, :cond_9

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getMetricsCategory()I

    move-result v9

    if-eqz v8, :cond_8

    const-wide/16 v12, 0x0

    goto :goto_3

    :cond_8
    iget v12, v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    int-to-long v12, v12

    :goto_3
    invoke-static {v9, v7, v12, v13}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-direct {v1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->applyFontStyle()V

    :cond_9
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCallbackFromDownloadFont:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$1;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "SecFontStylePreferenceFragment"

    const-string v2, "called onResume()"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCallbackFromDownloadFont:Z

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "USER_SELECTED_FONT_STYLE"

    iget v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    const-string v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "selectedFont"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
