.class public final synthetic Lcom/android/systemui/-$$Lambda$ScreenDecorations$s7DjNkOkUJ7fiS8MVJdfJI0DZDc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$s7DjNkOkUJ7fiS8MVJdfJI0DZDc;->f$0:Lcom/android/systemui/ScreenDecorations;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$s7DjNkOkUJ7fiS8MVJdfJI0DZDc;->f$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->lambda$onConfigurationChanged$1(Lcom/android/systemui/ScreenDecorations;)V

    return-void
.end method
