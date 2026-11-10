#lang racket

; Función que calcula el interés de un depósito
(define (calcular_interes deposito)
  (cond
    [(<= deposito 40000) (* deposito 0.035)]
    [(<= deposito 260000) (* deposito 0.04)]
    [else (* deposito 0.045)]))

; Prueba de funcionamiento
(displayln (calcular_interes 300000))
