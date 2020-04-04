.class public final synthetic Lcom/android/systemui/shared/dnd/-$$Lambda$DragAndDropHelper$1$uAlaSZukmZk4yEMHnHcXktoSvJg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/dnd/-$$Lambda$DragAndDropHelper$1$uAlaSZukmZk4yEMHnHcXktoSvJg;->f$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;

    iput p2, p0, Lcom/android/systemui/shared/dnd/-$$Lambda$DragAndDropHelper$1$uAlaSZukmZk4yEMHnHcXktoSvJg;->f$1:I

    iput-boolean p3, p0, Lcom/android/systemui/shared/dnd/-$$Lambda$DragAndDropHelper$1$uAlaSZukmZk4yEMHnHcXktoSvJg;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/-$$Lambda$DragAndDropHelper$1$uAlaSZukmZk4yEMHnHcXktoSvJg;->f$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;

    iget v1, p0, Lcom/android/systemui/shared/dnd/-$$Lambda$DragAndDropHelper$1$uAlaSZukmZk4yEMHnHcXktoSvJg;->f$1:I

    iget-boolean v2, p0, Lcom/android/systemui/shared/dnd/-$$Lambda$DragAndDropHelper$1$uAlaSZukmZk4yEMHnHcXktoSvJg;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;->lambda$onDragEnd$1(Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;IZ)V

    return-void
.end method
