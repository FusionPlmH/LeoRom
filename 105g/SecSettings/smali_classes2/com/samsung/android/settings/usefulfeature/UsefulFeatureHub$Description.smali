.class Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
.super Ljava/lang/Object;
.source "UsefulFeatureHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Description"
.end annotation


# instance fields
.field animation:I

.field db:Ljava/lang/String;

.field feature:Ljava/lang/String;

.field key:Ljava/lang/String;

.field loggingEvent:I

.field loggingFlow:I

.field summary:Ljava/lang/String;

.field title:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    iput v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    iput v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    return-void
.end method
