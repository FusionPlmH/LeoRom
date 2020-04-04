.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewCarrierLabelManager$EAoSozPwGA_QMFnqP0eiFp6EKes;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewCarrierLabelManager$EAoSozPwGA_QMFnqP0eiFp6EKes;->f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewCarrierLabelManager$EAoSozPwGA_QMFnqP0eiFp6EKes;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewCarrierLabelManager$EAoSozPwGA_QMFnqP0eiFp6EKes;->f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewCarrierLabelManager$EAoSozPwGA_QMFnqP0eiFp6EKes;->f$1:F

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->lambda$updateCarrierLabelAlphaAndVisibility$0(Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;F)V

    return-void
.end method
