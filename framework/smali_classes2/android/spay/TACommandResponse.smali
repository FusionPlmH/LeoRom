.class public Landroid/spay/TACommandResponse;
.super Ljava/lang/Object;
.source "TACommandResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/spay/TACommandResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TACommandResponse"


# instance fields
.field public mErrorMsg:Ljava/lang/String;

.field public mResponse:[B

.field public mResponseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/spay/TACommandResponse$1;

    invoke-direct {v0}, Landroid/spay/TACommandResponse$1;-><init>()V

    sput-object v0, Landroid/spay/TACommandResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object v0, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object v0, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    iput p1, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    iput-object p2, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object p3, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object v0, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    invoke-virtual {p0, p1}, Landroid/spay/TACommandResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/spay/TACommandResponse$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/spay/TACommandResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump()V
    .locals 6

    const-string v0, "TACommandResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    iget-object v3, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    add-int/lit8 v4, v2, -0x1

    aget-byte v3, v3, v4

    if-nez v3, :cond_0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, "%02X "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    aget-byte v5, v5, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "TACommandResponse"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/mnt/sdcard/respbuf.txt"

    invoke-direct {v4, v5, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v2, v4

    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :goto_1
    nop

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_2
    nop

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :goto_3
    nop

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    goto :goto_5

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :goto_5
    return-void

    :goto_6
    nop

    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_7

    :catch_3
    move-exception v4

    goto :goto_8

    :catch_4
    move-exception v4

    goto :goto_9

    :cond_4
    :goto_7
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_a

    :goto_8
    nop

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :goto_9
    nop

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_a
    throw v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    iget-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
