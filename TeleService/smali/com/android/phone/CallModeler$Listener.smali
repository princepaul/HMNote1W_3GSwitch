.class public interface abstract Lcom/android/phone/CallModeler$Listener;
.super Ljava/lang/Object;
.source "CallModeler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallModeler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCrssSuppServiceNumberUpdate(ILjava/lang/String;)V
.end method

.method public abstract onDisconnect(Lcom/android/services/telephony/common/Call;)V
.end method

.method public abstract onIncoming(Lcom/android/services/telephony/common/Call;)V
.end method

.method public abstract onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;C)V
.end method

.method public abstract onSuppServiceFailed(Ljava/lang/String;)V
.end method

.method public abstract onUpdate(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateDualtalkCallStatus(Lcom/android/services/telephony/common/DualtalkCallInfo;)V
.end method
