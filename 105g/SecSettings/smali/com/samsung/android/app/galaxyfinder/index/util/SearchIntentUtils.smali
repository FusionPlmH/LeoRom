.class public Lcom/samsung/android/app/galaxyfinder/index/util/SearchIntentUtils;
.super Ljava/lang/Object;
.source "SearchIntentUtils.java"


# direct methods
.method public static getStringFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchIntentUtils;->marshall(Landroid/content/Intent;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static marshall(Landroid/content/Intent;)[B
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method