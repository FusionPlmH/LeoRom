.class public final synthetic Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/-$$Lambda$FloatingNotificationStateManager$NaTCsByNBUNHaJ9eTxXWpWMFN-U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/-$$Lambda$FloatingNotificationStateManager$NaTCsByNBUNHaJ9eTxXWpWMFN-U;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/-$$Lambda$FloatingNotificationStateManager$NaTCsByNBUNHaJ9eTxXWpWMFN-U;->f$0:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->lambda$enableListValidationCheck$0(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
