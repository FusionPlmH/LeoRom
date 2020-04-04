.class public Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "SecProfileImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static PROJECTION_DATA:[Ljava/lang/String;

.field private static mProfileImageDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_id"

    const-string v1, "data14"

    const-string v2, "data15"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->PROJECTION_DATA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->setDefaultDrawable()V

    return-void
.end method

.method public static getProfileImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->mProfileImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static getProfileImageIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.mobileservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.mobileservice.action.ACTION_OPEN_SASETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static isProfileImageAvailable(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "com.samsung.android.mobileservice"

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private samsungAccountExists(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_0

    const-string v2, "SecProfileImageLoader"

    const-string v3, "Samsung Account is not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private setDefaultDrawable()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->mContext:Landroid/content/Context;

    const v1, 0x7f0805c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->mProfileImageDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/graphics/drawable/Drawable;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->samsungAccountExists(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->setDefaultDrawable()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->PROJECTION_DATA:[Ljava/lang/String;

    const-string v5, "account_type_and_data_set =? AND mimetype =?"

    const-string/jumbo v0, "vnd.sec.contact.phone"

    const-string/jumbo v6, "vnd.android.cursor.item/photo"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    :cond_2
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v4

    const-string v4, "SecProfileImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "thumbNail ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v5, "SecProfileImageLoader"

    const-string v6, "loadBitmap failed to get mediaInfo"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    sput-object v5, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->mProfileImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :cond_4
    goto :goto_1

    :cond_5
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v1

    :cond_6
    :goto_2
    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->loadInBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onDiscardResult(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->onDiscardResult(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
