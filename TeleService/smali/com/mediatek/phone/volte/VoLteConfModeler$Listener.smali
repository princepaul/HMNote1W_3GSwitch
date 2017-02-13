.class public interface abstract Lcom/mediatek/phone/volte/VoLteConfModeler$Listener;
.super Ljava/lang/Object;
.source "VoLteConfModeler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/volte/VoLteConfModeler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onVoLteConferenceUpdate(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/services/telephony/common/VoLteConferenceMember;",
            ">;)V"
        }
    .end annotation
.end method
