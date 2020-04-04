.class public final synthetic Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$GGUPv9osWllaLwJM7Wg6GJEWK8E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$3;

.field private final synthetic f$1:Lcom/samsung/android/bio/face/SemBioFace;

.field private final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager$3;Lcom/samsung/android/bio/face/SemBioFace;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$GGUPv9osWllaLwJM7Wg6GJEWK8E;->f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$3;

    iput-object p2, p0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$GGUPv9osWllaLwJM7Wg6GJEWK8E;->f$1:Lcom/samsung/android/bio/face/SemBioFace;

    iput-object p3, p0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$GGUPv9osWllaLwJM7Wg6GJEWK8E;->f$2:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$GGUPv9osWllaLwJM7Wg6GJEWK8E;->f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$3;

    iget-object v1, p0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$GGUPv9osWllaLwJM7Wg6GJEWK8E;->f$1:Lcom/samsung/android/bio/face/SemBioFace;

    iget-object v2, p0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$GGUPv9osWllaLwJM7Wg6GJEWK8E;->f$2:[B

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->lambda$onAuthenticationSucceeded$1(Lcom/samsung/android/bio/face/SemBioFaceManager$3;Lcom/samsung/android/bio/face/SemBioFace;[B)V

    return-void
.end method
