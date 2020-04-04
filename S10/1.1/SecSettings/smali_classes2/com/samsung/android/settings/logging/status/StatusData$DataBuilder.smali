.class public Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;
.super Ljava/lang/Object;
.source "StatusData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/logging/status/StatusData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBuilder"
.end annotation


# instance fields
.field private mStatusKey:Ljava/lang/String;

.field private mStatusValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->mStatusKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->mStatusValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->mStatusKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/settings/logging/status/StatusData;
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/logging/status/StatusData;-><init>(Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;)V

    return-object v0
.end method

.method public setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->mStatusValue:Ljava/lang/String;

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->mStatusValue:Ljava/lang/String;

    return-object p0
.end method
