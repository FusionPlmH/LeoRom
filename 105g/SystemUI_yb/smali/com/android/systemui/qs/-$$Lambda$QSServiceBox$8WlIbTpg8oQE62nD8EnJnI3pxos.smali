.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSServiceBox$8WlIbTpg8oQE62nD8EnJnI3pxos;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/QSServiceBox;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSServiceBox;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$QSServiceBox$8WlIbTpg8oQE62nD8EnJnI3pxos;->f$0:Lcom/android/systemui/qs/QSServiceBox;

    iput-object p2, p0, Lcom/android/systemui/qs/-$$Lambda$QSServiceBox$8WlIbTpg8oQE62nD8EnJnI3pxos;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/qs/-$$Lambda$QSServiceBox$8WlIbTpg8oQE62nD8EnJnI3pxos;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/-$$Lambda$QSServiceBox$8WlIbTpg8oQE62nD8EnJnI3pxos;->f$0:Lcom/android/systemui/qs/QSServiceBox;

    iget-object v1, p0, Lcom/android/systemui/qs/-$$Lambda$QSServiceBox$8WlIbTpg8oQE62nD8EnJnI3pxos;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/qs/-$$Lambda$QSServiceBox$8WlIbTpg8oQE62nD8EnJnI3pxos;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/QSServiceBox;->lambda$onCustomTileListChanged$2(Lcom/android/systemui/qs/QSServiceBox;Ljava/lang/String;I)V

    return-void
.end method