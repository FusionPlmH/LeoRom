.class public abstract Lcom/android/settings/search/InlinePayload;
.super Lcom/android/settings/search/ResultPayload;
.source "InlinePayload.java"


# instance fields
.field final mDefaultvalue:I

.field final mIsDeviceSupported:Z

.field private final mSettingKey:Ljava/lang/String;

.field final mSettingSource:I


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/search/ResultPayload;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/InlinePayload;->mSettingSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/search/InlinePayload;->mIsDeviceSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/InlinePayload;->mDefaultvalue:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/content/Intent;ZI)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/android/settings/search/ResultPayload;-><init>(Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/android/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    iput p2, p0, Lcom/android/settings/search/InlinePayload;->mSettingSource:I

    iput-boolean p4, p0, Lcom/android/settings/search/InlinePayload;->mIsDeviceSupported:Z

    iput p5, p0, Lcom/android/settings/search/InlinePayload;->mDefaultvalue:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/search/ResultPayload;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/search/InlinePayload;->mSettingSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/settings/search/InlinePayload;->mIsDeviceSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/settings/search/InlinePayload;->mDefaultvalue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
