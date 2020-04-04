.class public final synthetic Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$t45-xA1e0BAEQb23KgH3tl51ZE4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$3;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager$3;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$t45-xA1e0BAEQb23KgH3tl51ZE4;->f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$3;

    iput p2, p0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$t45-xA1e0BAEQb23KgH3tl51ZE4;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$t45-xA1e0BAEQb23KgH3tl51ZE4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$t45-xA1e0BAEQb23KgH3tl51ZE4;->f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$3;

    iget v1, p0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$t45-xA1e0BAEQb23KgH3tl51ZE4;->f$1:I

    iget-object v2, p0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$t45-xA1e0BAEQb23KgH3tl51ZE4;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->lambda$onError$3(Lcom/samsung/android/bio/face/SemBioFaceManager$3;ILjava/lang/String;)V

    return-void
.end method
