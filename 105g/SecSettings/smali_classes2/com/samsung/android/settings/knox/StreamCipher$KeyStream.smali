.class Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;
.super Ljava/lang/Object;
.source "StreamCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/StreamCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyStream"
.end annotation


# instance fields
.field private mKey:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;->mKey:[B

    return-void
.end method


# virtual methods
.method destroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;->mKey:[B

    invoke-static {v0}, Lcom/samsung/android/settings/knox/StreamCipher;->clear([B)V

    return-void
.end method

.method getKey()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;->mKey:[B

    return-object v0
.end method
